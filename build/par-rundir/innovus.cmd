#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sun Dec 13 19:48:09 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v18.10-p002_1 (64bit) 05/29/2018 19:19 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 18.10-p002_1 NR180522-1057/18_10-UB (database version 2.30, 418.7.1) {superthreading v1.46}
#@(#)CDS: AAE 18.10-p004 (64bit) 05/29/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 18.10-p003_1 () May 15 2018 10:23:07 ( )
#@(#)CDS: SYNTECH 18.10-a012_1 () Apr 19 2018 01:27:21 ( )
#@(#)CDS: CPE v18.10-p005
#@(#)CDS: IQRC/TQRC 18.1.1-s118 (64bit) Fri Mar 23 17:23:45 PDT 2018 (Linux 2.6.18-194.el5)

set_db design_process_node 7
set_multi_cpu_usage -local_cpu 4
set_db timing_analysis_cppr both
set_db timing_analysis_type ocv
set_library_unit -time 1ps
read_physical -lef { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/techlef_misc/asap7_tech_4x_170803.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_R_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_L_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SL_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SRAM_4x_170912.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW32x50_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x34_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x22_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x39_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x8_x4.lef }
read_mmmc /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/mmmc.tcl
read_netlist { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.v } -top riscv_top
init_design
read_power_intent -cpf /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/power_spec.cpf
commit_power_intent
set_db design_flow_effort standard
set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_R]
set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_L]
set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_SL]
set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_SRAM]
set_db route_design_bottom_routing_layer 2
set_db route_design_top_routing_layer 7
write_db pre_floorplan_design
create_floorplan -core_margins_by die -flip f -die_size_by_io_height max -site coreSite -die_size { 350 400 0 0 0 0 }
place_inst mem/icache/tag_valid_sram 95.04 14.04 my
place_inst mem/dcache/tag_valid_sram 264.6 9.72 r0
place_inst mem/icache/data_sram 19.44 139.32 my
place_inst mem/dcache/data_sram 284.04 140.4 r0
create_place_blockage -area {0 0 350 1.08}
write_db pre_place_bumps
write_db pre_place_tap_cells
set_db add_well_taps_cell TAPCELL_ASAP7_75t_L
add_well_taps -cell_interval 50 -in_row_offset 10.564
write_db pre_power_straps
reset_db -category add_stripes
set_db add_stripes_stacked_via_bottom_layer M1
set_db add_stripes_stacked_via_top_layer M1
set_db add_stripes_spacing_from_block 2.000
add_stripes -pin_layer M1 -layer M1 -over_pins 1 -master {{TAPCELL*}} -block_ring_bottom_layer_limit M1 -block_ring_top_layer_limit M1 -pad_core_ring_bottom_layer_limit M1 -pad_core_ring_top_layer_limit M1 -direction horizontal -width pin_width -nets { VSS VDD }
reset_db -category add_stripes
set_db add_stripes_stacked_via_top_layer M3
set_db add_stripes_stacked_via_bottom_layer M1
set_db add_stripes_trim_antenna_back_to_shape stripe
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit M3 -block_ring_top_layer_limit M1 -direction vertical -layer M3 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit M1 -set_to_set_distance 8.640 -spacing 0.216 -switch_layer_over_obs 0 -width 0.936 -area {{0.0 0.0 350.064 400.032}} -start 1.548
reset_db -category add_stripes
set_db add_stripes_stacked_via_top_layer M4
set_db add_stripes_stacked_via_bottom_layer M3
set_db add_stripes_trim_antenna_back_to_shape stripe
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit M4 -block_ring_top_layer_limit M3 -direction horizontal -layer M4 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit M3 -set_to_set_distance 10.752 -spacing 0.288 -switch_layer_over_obs 0 -width 0.864 -area {{0.0 0.0 350.064 400.032}} -start 2.268
reset_db -category add_stripes
set_db add_stripes_stacked_via_top_layer M5
set_db add_stripes_stacked_via_bottom_layer M4
set_db add_stripes_trim_antenna_back_to_shape stripe
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit M5 -block_ring_top_layer_limit M4 -direction vertical -layer M5 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit M4 -set_to_set_distance 10.752 -spacing 0.288 -switch_layer_over_obs 0 -width 0.864 -area {{0.0 0.0 350.064 400.032}} -start 2.256
reset_db -category add_stripes
set_db add_stripes_stacked_via_top_layer M6
set_db add_stripes_stacked_via_bottom_layer M5
set_db add_stripes_trim_antenna_back_to_shape stripe
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit M6 -block_ring_top_layer_limit M5 -direction horizontal -layer M6 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit M5 -set_to_set_distance 14.336 -spacing 0.288 -switch_layer_over_obs 0 -width 1.152 -area {{0.0 0.0 350.064 400.032}} -start 2.912
reset_db -category add_stripes
set_db add_stripes_stacked_via_top_layer M7
set_db add_stripes_stacked_via_bottom_layer M6
set_db add_stripes_trim_antenna_back_to_shape stripe
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit M7 -block_ring_top_layer_limit M6 -direction vertical -layer M7 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit M6 -set_to_set_distance 14.336 -spacing 0.288 -switch_layer_over_obs 0 -width 1.152 -area {{0.0 0.0 350.064 400.032}} -start 2.912
reset_db -category add_stripes
set_db add_stripes_stacked_via_top_layer M8
set_db add_stripes_stacked_via_bottom_layer M7
set_db add_stripes_trim_antenna_back_to_shape stripe
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 0 -block_ring_bottom_layer_limit M8 -block_ring_top_layer_limit M7 -direction horizontal -layer M8 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit M7 -set_to_set_distance 4.480 -spacing 0.480 -switch_layer_over_obs 0 -width 1.760 -area {{0.0 0.0 350.064 400.032}} -start 3.76
reset_db -category add_stripes
set_db add_stripes_stacked_via_top_layer M9
set_db add_stripes_stacked_via_bottom_layer M8
set_db add_stripes_trim_antenna_back_to_shape stripe
set_db add_stripes_spacing_from_block 2.000
add_stripes -create_pins 1 -block_ring_bottom_layer_limit M9 -block_ring_top_layer_limit M8 -direction vertical -layer M9 -nets {VSS VDD} -pad_core_ring_bottom_layer_limit M8 -set_to_set_distance 4.480 -spacing 0.480 -switch_layer_over_obs 0 -width 1.760 -area {{0.0 0.0 350.064 400.032}} -start 3.76
write_db pre_place_pins
set_db assign_pins_edit_in_batch true
edit_pin -fixed_pin -pin * -hinst riscv_top -pattern fill_optimised -layer { M5 M7 } -side bottom -start { 350 0 } -end { 0 0 }
set_db assign_pins_edit_in_batch false
write_db pre_place_opt_design
place_opt_design
write_db pre_clock_tree
create_clock_tree_spec
ccopt_design -hold -report_dir hammer_cts_debug -report_prefix hammer_cts
write_db pre_add_fillers
set_db add_fillers_cells {FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM }
add_fillers
write_db pre_route_design
route_design
write_db pre_opt_design
opt_design -post_route -setup -hold
write_db pre_write_regs
all_registers -edge_triggered -output_pins
write_db pre_write_design
write_db riscv_top_FINAL -def -verilog
set_db write_stream_virtual_connection false
write_netlist /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.lvs.v -top_module_first -top_module riscv_top -exclude_leaf_cells -phys -flat -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM }
write_netlist /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.sim.v -top_module_first -top_module riscv_top -exclude_leaf_cells -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM }
write_stream -mode ALL -map_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7PDK_r1p5.tar.bz2/asap7PDK_r1p5/cdslib/asap7_TechLib/asap7_fromAPR.layermap -uniquify_cell_names -merge { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_R.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_L.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_SL.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_SRAM.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW1024x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x46_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x48_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x46_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x48_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW32x50_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x34_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x22_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x39_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x8_x4.gds } /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.gds
write_sdf /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.par.sdf
set_db extract_rc_coupled true
extract_rc
write_parasitics -spef_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.setup.par.spef -rc_corner PVT_0P63V_100C.setup_rc
write_parasitics -spef_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.hold.par.spef -rc_corner PVT_0P77V_0C.hold_rc
write_db pre_scale_final_gds
write_db post_scale_final_gds
