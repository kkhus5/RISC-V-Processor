HAMMER_EXEC ?= /home/ff/eecs151/hammer/src/hammer-shell/hammer-vlsi
HAMMER_DEPENDENCIES ?= /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/asap7.yml /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sram_generator-output.json /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/syn.yml /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/par.yml /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-rtl.yml /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-syn.yml /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-par.yml /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml /home/ff/eecs151/verilog_lib/EECS151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALUdec.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALU.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Cache.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Memory151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Riscv151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_arbiter.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_top.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmediateGenerator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BranchComparator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Adder.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BrUn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSR.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSRSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data1Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data2Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/DataSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/FlipFlop.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/MemRW.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCAddSignal.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCFour.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegFile.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegWEn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage1Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage2Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage3Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSelMux.v


####################################################################################
## Global steps
####################################################################################
.PHONY: pcb
pcb: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/pcb-rundir/pcb-output-full.json

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/pcb-rundir/pcb-output-full.json: $(HAMMER_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/asap7.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sram_generator-output.json -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/par.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-rtl.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-par.yml --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build pcb


####################################################################################
## Steps for riscv_top
####################################################################################
.PHONY: sim-rtl syn sim-syn par sim-par power-par drc lvs
sim-rtl: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-rtl-rundir/sim-output-full.json
syn: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/syn-output-full.json
sim-syn: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-rundir/sim-output-full.json
par: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json
sim-par: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-rundir/sim-output-full.json
power-par: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-rundir/power-output-full.json
drc: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/drc-rundir/drc-output-full.json
lvs: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/lvs-rundir/lvs-output-full.json



/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-rtl-rundir/sim-output-full.json: $(HAMMER_DEPENDENCIES) $(HAMMER_SIM_RTL_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/asap7.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sram_generator-output.json -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/par.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-rtl.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-par.yml $(HAMMER_EXTRA_ARGS) --sim_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-rtl-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build sim

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/syn-output-full.json: $(HAMMER_DEPENDENCIES) $(HAMMER_SYN_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/asap7.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sram_generator-output.json -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/par.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-rtl.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-par.yml $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build syn

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-input.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-input.json --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build syn-to-sim

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-rundir/sim-output-full.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-input.json $(HAMMER_SIM_SYN_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build sim

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-input.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/syn-output-full.json $(HAMMER_EXTRA_ARGS) -o /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-input.json --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build syn-to-par

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-input.json $(HAMMER_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build par

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-input.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-input.json --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build par-to-sim

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-rundir/sim-output-full.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-input.json $(HAMMER_SIM_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build sim

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-sim-par-input.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-rundir/sim-output-full.json
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-rundir/sim-output-full.json $(HAMMER_EXTRA_ARGS) -o /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-sim-par-input.json --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build sim-to-power

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-input.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-input.json --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build par-to-power

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-rundir/power-output-full.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-sim-par-input.json /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-input.json $(HAMMER_POWER_PAR_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-sim-par-input.json -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build power

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/drc-input.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/drc-input.json --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build par-to-drc

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/drc-rundir/drc-output-full.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/drc-input.json $(HAMMER_DRC_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/drc-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build drc

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/lvs-input.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/par-output-full.json $(HAMMER_EXTRA_ARGS) -o /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/lvs-input.json --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build par-to-lvs

/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/lvs-rundir/lvs-output-full.json: /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/lvs-input.json $(HAMMER_LVS_DEPENDENCIES)
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/lvs-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build lvs

# Redo steps
# These intentionally break the dependency graph, but allow the flexibility to rerun a step after changing a config.
# Hammer doesn't know what settings impact synthesis only, e.g., so these are for power-users who "know better."
# The HAMMER_EXTRA_ARGS variable allows patching in of new configurations with -p or using --to_step or --from_step, for example.
.PHONY: redo-sim-rtl redo-syn redo-sim-syn redo-par redo-sim-par redo-power-par redo-drc redo-lvs

redo-sim-rtl:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/asap7.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sram_generator-output.json -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/par.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-rtl.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-par.yml $(HAMMER_EXTRA_ARGS) --sim_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-rtl-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build sim

redo-syn:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/asap7.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sram_generator-output.json -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/par.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-rtl.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-syn.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/sim-gl-par.yml $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build syn

redo-sim-syn:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-syn-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build sim

redo-par:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build par

redo-sim-par:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-input.json $(HAMMER_EXTRA_ARGS) --sim_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/sim-par-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build sim

redo-power-par:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-sim-par-input.json -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-input.json $(HAMMER_EXTRA_ARGS) --power_rundir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/power-par-rundir --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build power

redo-drc:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/drc-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build drc

redo-lvs:
	$(HAMMER_EXEC) -e /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/inst-env.yml -p /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/lvs-input.json $(HAMMER_EXTRA_ARGS) --obj_dir /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build lvs

