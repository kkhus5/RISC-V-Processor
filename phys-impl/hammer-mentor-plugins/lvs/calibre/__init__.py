#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
#  hammer-vlsi plugin for Mentor Graphics CalibreLVS.
#
#  See LICENSE for licence details.

from hammer_vlsi import HammerToolStep
from hammer_vlsi import HammerLVSTool, MentorCalibreTool
from hammer_logging import HammerVLSILogging
from hammer_utils import HammerFiletype, get_filetype
import hammer_tech

from typing import Dict, List

import os
import textwrap


class CalibreLVS(HammerLVSTool, MentorCalibreTool):

    def tool_config_prefix(self) -> str:
        return "lvs.calibre"

    def erc_results_pre_waived(self) -> Dict[str, int]:
        return {}

    def lvs_results(self) -> List[str]:
        return []

    def fill_outputs(self) -> bool:
        return True

    # TODO: placeholder empty step
    def empty_step(self) -> bool:
        return True

    @property
    def steps(self) -> List[HammerToolStep]:
        steps = [self.empty_step]  # TODO: LVS steps require multiple runs of the tool how do we support this?
        return self.make_steps_from_methods(steps)

    def do_post_steps(self) -> bool:
        assert super().do_post_steps()
        return self.run_calibre()

    def globally_waived_erc_rules(self) -> List[str]:
        return []

    def run_calibre(self) -> bool:
        self.create_enter_script()

        # generate the run script
        self.generate_lvs_run_file()
        self.generate_top_spice_file()
        # generate the hcells file if needed
        self.generate_hcells_file()

        # set the command arguments
        args = [
            self.get_setting("lvs.calibre.calibre_lvs_bin"),
            "-64",  # always want to be in 64-bit mode
            "-lvs",  # Calibre LVS and DRC usually use the same executable and use a flag to change tasks
        ]
        if self.get_setting("lvs.calibre.hierarchical_mode"):
            args.append("-hier")
        turbo_cores = self.get_setting("lvs.calibre.turbo_cores")  # type: int
        if turbo_cores > 0:
            args.append("-turbo")
            args.append("%d" % turbo_cores)
        if self.get_setting("lvs.calibre.hyperthreaded"):
            args.append("-hyper")
        if len(self.hcells_list) > 0:
            args.append("-hcells")
            args.append(self.hcells_file)
        args.append(self.lvs_run_file)

        HammerVLSILogging.enable_colour = False
        HammerVLSILogging.enable_tag = False
        self.run_executable(args, cwd=self.run_dir)  # TODO: check for errors and deal with them
        HammerVLSILogging.enable_colour = True
        HammerVLSILogging.enable_tag = True

        # TODO: check that lvs run was successful

        # Create view_lvs script.
        os.makedirs(self.generated_scripts_dir, exist_ok=True)

        layerprops_file = self.get_setting("mentor.layerprops")
        if layerprops_file is not None:
            layerprops = "-dl " + os.path.abspath(layerprops_file)
        else:
            layerprops = ""

        with open(self.view_lvs_script, "w") as f:
            f.write("""
        cd {run_dir}
        source enter
        {calibredrv} {layerprops} -m {gds} -rve -lvs {results}
            """.format(
                run_dir=self.run_dir,
                calibredrv=self.get_setting("lvs.calibre.calibredrv_bin"),
                layerprops=layerprops,
                gds=self.layout_file,
                results=self.lvs_results_db
            ))
        os.chmod(self.view_lvs_script, 0o755)

        return True

    @property
    def hcells_file(self) -> str:
        return os.path.join(self.run_dir, "hcells")

    def generate_hcells_file(self) -> None:
        with open(self.hcells_file, "w") as f:
            f.write("")
            # TODO

    def generate_top_spice_file(self) -> None:
        library_spice_files = self.technology.read_libs([hammer_tech.filters.spice_filter], hammer_tech.HammerTechnologyUtils.to_plain_item)
        ilms = list(map(lambda x: x.netlist, self.ilms))  # type: List[str]

        with open(self.top_spice_file, "w") as f:
            for sch in library_spice_files + self.schematic_files + ilms:
                spice_file = sch
                t = get_filetype(sch)
                if t is HammerFiletype.SPICE:
                    pass
                elif t is HammerFiletype.VERILOG:
                    # Convert verilog to spice
                    spice_file = os.path.join(self.run_dir, ".".join(os.path.basename(sch).split(".")[0:-1] + ["sp"]))
                    args = [self.get_setting("lvs.calibre.v2lvs_bin"), "-v", sch, "-o", spice_file, "-w", "2"]
                    HammerVLSILogging.enable_colour = False
                    HammerVLSILogging.enable_tag = False
                    self.run_executable(args, cwd=self.run_dir)  # TODO: check for errors and deal with them
                    HammerVLSILogging.enable_colour = True
                    HammerVLSILogging.enable_tag = True
                else:
                    raise NotImplementedError("Unsupported netlist type for file " + self.top_spice_file)
                f.write(".INCLUDE \"{sp}\"\n".format(sp=spice_file))

    def generate_lvs_run_file(self) -> None:
        """ Generate the LVS run file self.lvs_run_file and fill its contents """

        indent = lambda x: "\t" + x

        report_option_cmd = "LVS REPORT OPTION S" if bool(self.get_setting("lvs.calibre.report_stamping_conflicts")) else "LVS REPORT OPTION NONE"

        # Generate VIRTUAL CONNECT NAME statements
        virtual_connect_nets = ""
        for net in self.virtual_connect_nets:
            virtual_connect_nets += "VIRTUAL CONNECT NAME \"{net}\"\n".format(net=net)

        with open(self.lvs_run_file, "w") as f:
            f.write(textwrap.dedent("""
            // Generated by HAMMER

            LAYOUT PATH "{gds}"
            LAYOUT PRIMARY "{top}"
            LAYOUT SYSTEM GDSII

            SOURCE PATH "{spice}"
            SOURCE PRIMARY "{top}"
            SOURCE SYSTEM SPICE

            MASK SVDB DIRECTORY "{lvs_results}" QUERY SI

            LVS REPORT "{report}"
            {report_option_cmd}
            LVS FILTER UNUSED OPTION AB SOURCE
            LVS FILTER UNUSED OPTION AB LAYOUT
            LVS REPORT MAXIMUM {max_lvs_results}
            LVS POWER NAME
            {power_list}

            LVS GROUND NAME
            {ground_list}

            {netlist_unnamed_box_pins}

            LVS RECOGNIZE GATES NONE

            LVS ABORT ON SOFTCHK NO
            LVS ABORT ON SUPPLY ERROR {abort_on_supply_error}
            LVS IGNORE PORTS NO
            LVS SHOW SEED PROMOTIONS NO

            {short_isolation}

            {virtual_connect_nets}

            VIRTUAL CONNECT COLON {virtual_connect_colon}
            VIRTUAL CONNECT REPORT {virtual_connect_report}

            LVS EXECUTE ERC YES
            ERC RESULTS DATABASE "{erc_results}"
            ERC SUMMARY REPORT "{top}.erc.summary" REPLACE
            ERC CELL NAME YES CELL SPACE XFORM
            ERC MAXIMUM RESULTS {max_erc_results}
            ERC MAXIMUM VERTEX 4096

            DRC ICSTATION YES
            """).format(
                gds=self.layout_file,
                spice=self.top_spice_file,
                top=self.top_module,
                report=self.lvs_report_file,
                report_option_cmd=report_option_cmd,
                lvs_results=self.lvs_results_db,
                erc_results=self.erc_results_file,
                max_lvs_results=self.max_lvs_results,
                max_erc_results=self.max_erc_results,
                netlist_unnamed_box_pins="" if self.netlist_unnamed_box_pins else "LVS NETLIST UNNAMED BOX PINS NO",
                power_list="\n".join(map(indent, map(lambda x: x.name, self.get_independent_power_nets()))),
                ground_list="\n".join(map(indent, map(lambda x: x.name, self.get_independent_ground_nets()))),
                short_isolation="LVS ISOLATE SHORTS YES BY LAYER BY CELL" if self.run_short_isolation else "",
                virtual_connect_nets=virtual_connect_nets,
                virtual_connect_colon="YES" if self.virtual_connect_colon else "NO",
                # Report virtual connections if virtual_connect_colon is enabled, or there are nets to be virtually connected manually.
                virtual_connect_report="YES" if self.virtual_connect_colon or self.virtual_connect_nets else "NO",
                abort_on_supply_error="YES" if self.abort_on_supply_error else "NO"
            )
            )
            # Include paths to all supplied decks
            for rule in self.get_lvs_decks():
                f.write("INCLUDE \"{}\"\n".format(rule.path))
            f.write(self.get_additional_lvs_text())

    @property
    def generated_scripts_dir(self) -> str:
        return os.path.join(self.run_dir, "generated-scripts")

    @property
    def view_lvs_script(self) -> str:
        return os.path.join(self.generated_scripts_dir, "view_lvs")

    @property
    def lvs_run_file(self) -> str:
        return os.path.join(self.run_dir, "lvs_run_file")

    @property
    def erc_results_file(self) -> str:
        return os.path.join(self.run_dir, "erc_results.db")

    @property
    def lvs_results_db(self) -> str:
        return os.path.join(self.run_dir, "lvs_results.db")

    @property
    def lvs_report_file(self) -> str:
        return os.path.join(self.run_dir, "lvs_results.rpt")

    @property
    def netlist_unnamed_box_pins(self) -> str:
        return bool(self.get_setting("lvs.calibre.netlist_unnamed_box_pins"))

    @property
    def top_spice_file(self) -> str:
        return os.path.join(self.run_dir, "{top}.include.sp".format(top=self.top_module))

    @property
    def converted_spice_file(self) -> str:
        return os.path.join(self.run_dir, "{top}.sp".format(top=self.top_module))

    @property
    def max_erc_results(self) -> int:
        return int(self.get_setting("lvs.calibre.max_erc_results"))

    @property
    def max_lvs_results(self) -> int:
        return int(self.get_setting("lvs.calibre.max_lvs_results"))

    # TODO do we also want virtual connect by name (e.g. for hierarchical blocks)
    @property
    def virtual_connect_colon(self) -> bool:
        return bool(self.get_setting("lvs.calibre.virtual_connect_colon"))

    @property
    def virtual_connect_nets(self) -> list:
        return list(self.get_setting("lvs.calibre.virtual_connect_nets"))

    @property
    def run_short_isolation(self) -> bool:
        return bool(self.get_setting("lvs.calibre.run_short_isolation"))

    @property
    def abort_on_supply_error(self) -> bool:
        return bool(self.get_setting("lvs.calibre.abort_on_supply_error"))

    @property
    def env_vars(self) -> Dict[str, str]:
        """
        Get the list of environment variables required for this tool.
        Note to subclasses: remember to include variables from super().env_vars!
        """
        result = dict(super().env_vars)
        result.update({
            "MGC_HOME": self.get_setting("lvs.calibre.MGC_HOME")
        })
        return result


tool = CalibreLVS
