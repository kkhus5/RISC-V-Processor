puts "set_db design_process_node 7" 
set_db design_process_node 7
puts "set_multi_cpu_usage -local_cpu 4" 
set_multi_cpu_usage -local_cpu 4
puts "set_db timing_analysis_cppr both" 
set_db timing_analysis_cppr both
puts "set_db timing_analysis_type ocv" 
set_db timing_analysis_type ocv
puts "set_library_unit -time 1ps" 
set_library_unit -time 1ps
puts "read_physical -lef { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/techlef_misc/asap7_tech_4x_170803.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_R_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_L_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SL_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SRAM_4x_170912.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW32x50_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x34_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x22_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x39_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x8_x4.lef }" 
read_physical -lef { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/techlef_misc/asap7_tech_4x_170803.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_R_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_L_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SL_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SRAM_4x_170912.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW32x50_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x34_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x22_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x39_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x8_x4.lef }
puts "read_mmmc /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/mmmc.tcl" 
read_mmmc /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/mmmc.tcl
puts "read_netlist { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.v } -top riscv_top" 
read_netlist { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.v } -top riscv_top
puts "init_design" 
init_design
puts "read_power_intent -cpf /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/power_spec.cpf" 
read_power_intent -cpf /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/power_spec.cpf
puts "commit_power_intent" 
commit_power_intent
puts "set_db design_flow_effort standard" 
set_db design_flow_effort standard

puts "set_dont_use \[get_db lib_cells */BUFx16f_ASAP7_75t_R\]"
if { [get_db lib_cells */BUFx16f_ASAP7_75t_R] ne "" } {
    set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_R]
} else {
    puts "WARNING: cell */BUFx16f_ASAP7_75t_R was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */BUFx16f_ASAP7_75t_L\]"
if { [get_db lib_cells */BUFx16f_ASAP7_75t_L] ne "" } {
    set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_L]
} else {
    puts "WARNING: cell */BUFx16f_ASAP7_75t_L was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */BUFx16f_ASAP7_75t_SL\]"
if { [get_db lib_cells */BUFx16f_ASAP7_75t_SL] ne "" } {
    set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_SL]
} else {
    puts "WARNING: cell */BUFx16f_ASAP7_75t_SL was not found for set_dont_use"
}
            

puts "set_dont_use \[get_db lib_cells */BUFx16f_ASAP7_75t_SRAM\]"
if { [get_db lib_cells */BUFx16f_ASAP7_75t_SRAM] ne "" } {
    set_dont_use [get_db lib_cells */BUFx16f_ASAP7_75t_SRAM]
} else {
    puts "WARNING: cell */BUFx16f_ASAP7_75t_SRAM was not found for set_dont_use"
}
            

set_db route_design_bottom_routing_layer 2
set_db route_design_top_routing_layer 7
    
puts "write_db pre_floorplan_design" 
write_db pre_floorplan_design
puts "ln -sfn pre_floorplan_design latest" 
ln -sfn pre_floorplan_design latest
puts "source -echo -verbose /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/floorplan.tcl" 
source -echo -verbose /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/floorplan.tcl
puts "write_db pre_place_bumps" 
write_db pre_place_bumps
puts "ln -sfn pre_place_bumps latest" 
ln -sfn pre_place_bumps latest
puts "write_db pre_place_tap_cells" 
write_db pre_place_tap_cells
puts "ln -sfn pre_place_tap_cells latest" 
ln -sfn pre_place_tap_cells latest
set_db add_well_taps_cell TAPCELL_ASAP7_75t_L
add_well_taps -cell_interval 50 -in_row_offset 10.564
puts "write_db pre_power_straps" 
write_db pre_power_straps
puts "ln -sfn pre_power_straps latest" 
ln -sfn pre_power_straps latest
puts "source -echo -verbose /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/power_straps.tcl" 
source -echo -verbose /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/power_straps.tcl
puts "write_db pre_place_pins" 
write_db pre_place_pins
puts "ln -sfn pre_place_pins latest" 
ln -sfn pre_place_pins latest
puts "set_db assign_pins_edit_in_batch true" 
set_db assign_pins_edit_in_batch true
puts "edit_pin -fixed_pin -pin * -hinst riscv_top -pattern fill_optimised -layer { M5 M7 } -side bottom -start { 350 0 } -end { 0 0 }   " 
edit_pin -fixed_pin -pin * -hinst riscv_top -pattern fill_optimised -layer { M5 M7 } -side bottom -start { 350 0 } -end { 0 0 }   
puts "set_db assign_pins_edit_in_batch false" 
set_db assign_pins_edit_in_batch false
puts "write_db pre_place_opt_design" 
write_db pre_place_opt_design
puts "ln -sfn pre_place_opt_design latest" 
ln -sfn pre_place_opt_design latest
puts "place_opt_design" 
place_opt_design
puts "write_db pre_clock_tree" 
write_db pre_clock_tree
puts "ln -sfn pre_clock_tree latest" 
ln -sfn pre_clock_tree latest
puts "create_clock_tree_spec" 
create_clock_tree_spec
puts "ccopt_design -hold -report_dir hammer_cts_debug -report_prefix hammer_cts" 
ccopt_design -hold -report_dir hammer_cts_debug -report_prefix hammer_cts
puts "write_db pre_add_fillers" 
write_db pre_add_fillers
puts "ln -sfn pre_add_fillers latest" 
ln -sfn pre_add_fillers latest
set_db add_fillers_cells "FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM "
add_fillers
puts "write_db pre_route_design" 
write_db pre_route_design
puts "ln -sfn pre_route_design latest" 
ln -sfn pre_route_design latest
puts "route_design" 
route_design
puts "write_db pre_opt_design" 
write_db pre_opt_design
puts "ln -sfn pre_opt_design latest" 
ln -sfn pre_opt_design latest
puts "opt_design -post_route -setup -hold" 
opt_design -post_route -setup -hold
puts "write_db pre_write_regs" 
write_db pre_write_regs
puts "ln -sfn pre_write_regs latest" 
ln -sfn pre_write_regs latest

        set write_cells_ir "./find_regs_cells.json"
        set write_cells_ir [open $write_cells_ir "w"]
        puts $write_cells_ir "\["

        set refs [get_db [get_db lib_cells -if .is_flop==true] .base_name]

        set len [llength $refs]

        for {set i 0} {$i < [llength $refs]} {incr i} {
            if {$i == $len - 1} {
                puts $write_cells_ir "    \"[lindex $refs $i]\""
            } else {
                puts $write_cells_ir "    \"[lindex $refs $i]\","
            }
        }

        puts $write_cells_ir "\]"
        close $write_cells_ir
        set write_regs_ir "./find_regs_paths.json"
        set write_regs_ir [open $write_regs_ir "w"]
        puts $write_regs_ir "\["

        set regs [get_db [get_db [all_registers -edge_triggered -output_pins] -if .direction==out] .name]

        set len [llength $regs]

        for {set i 0} {$i < [llength $regs]} {incr i} {
            #regsub -all {/} [lindex $regs $i] . myreg
            set myreg [lindex $regs $i]
            if {$i == $len - 1} {
                puts $write_regs_ir "    \"$myreg\""
            } else {
                puts $write_regs_ir "    \"$myreg\","
            }
        }

        puts $write_regs_ir "\]"

        close $write_regs_ir
        
puts "write_db pre_write_design" 
write_db pre_write_design
puts "ln -sfn pre_write_design latest" 
ln -sfn pre_write_design latest
puts "write_db riscv_top_FINAL -def -verilog" 
write_db riscv_top_FINAL -def -verilog
puts "set_db write_stream_virtual_connection false" 
set_db write_stream_virtual_connection false
puts "write_netlist /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.lvs.v -top_module_first -top_module riscv_top -exclude_leaf_cells -phys -flat -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM } " 
write_netlist /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.lvs.v -top_module_first -top_module riscv_top -exclude_leaf_cells -phys -flat -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM } 
puts "write_netlist /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.sim.v -top_module_first -top_module riscv_top -exclude_leaf_cells -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM } " 
write_netlist /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.sim.v -top_module_first -top_module riscv_top -exclude_leaf_cells -exclude_insts_of_cells { TAPCELL_ASAP7_75t_R TAPCELL_ASAP7_75t_L TAPCELL_ASAP7_75t_SL TAPCELL_ASAP7_75t_SRAM TAPCELL_WITH_FILLER_ASAP7_75t_R TAPCELL_WITH_FILLER_ASAP7_75t_L TAPCELL_WITH_FILLER_ASAP7_75t_SL TAPCELL_WITH_FILLER_ASAP7_75t_SRAM FILLER_ASAP7_75t_R FILLER_ASAP7_75t_L FILLER_ASAP7_75t_SL FILLER_ASAP7_75t_SRAM FILLERxp5_ASAP7_75t_R FILLERxp5_ASAP7_75t_L FILLERxp5_ASAP7_75t_SL FILLERxp5_ASAP7_75t_SRAM DECAPx1_ASAP7_75t_R DECAPx1_ASAP7_75t_L DECAPx1_ASAP7_75t_SL DECAPx1_ASAP7_75t_SRAM DECAPx2_ASAP7_75t_R DECAPx2_ASAP7_75t_L DECAPx2_ASAP7_75t_SL DECAPx2_ASAP7_75t_SRAM DECAPx4_ASAP7_75t_R DECAPx4_ASAP7_75t_L DECAPx4_ASAP7_75t_SL DECAPx4_ASAP7_75t_SRAM DECAPx6_ASAP7_75t_R DECAPx6_ASAP7_75t_L DECAPx6_ASAP7_75t_SL DECAPx6_ASAP7_75t_SRAM DECAPx10_ASAP7_75t_R DECAPx10_ASAP7_75t_L DECAPx10_ASAP7_75t_SL DECAPx10_ASAP7_75t_SRAM } 
puts "write_stream -mode ALL -map_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7PDK_r1p5.tar.bz2/asap7PDK_r1p5/cdslib/asap7_TechLib/asap7_fromAPR.layermap -uniquify_cell_names -merge { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_R.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_L.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_SL.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_SRAM.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW1024x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x46_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x48_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x46_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x48_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW32x50_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x34_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x22_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x39_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x8_x4.gds }  /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.gds" 
write_stream -mode ALL -map_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7PDK_r1p5.tar.bz2/asap7PDK_r1p5/cdslib/asap7_TechLib/asap7_fromAPR.layermap -uniquify_cell_names -merge { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_R.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_L.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_SL.gds /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/asap7sc7p5t_24_SRAM.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW1024x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x46_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x48_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW128x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x46_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x48_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW256x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW32x50_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW512x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x128_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x34_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM1RW64x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW128x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW16x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x22_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x39_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW32x8_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x16_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x32_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x4_x4.gds /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/gds/SRAM2RW64x8_x4.gds }  /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.gds
puts "write_sdf /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.par.sdf" 
write_sdf /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.par.sdf
puts "set_db extract_rc_coupled true" 
set_db extract_rc_coupled true
puts "extract_rc" 
extract_rc
puts "write_parasitics -spef_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.setup.par.spef -rc_corner PVT_0P63V_100C.setup_rc" 
write_parasitics -spef_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.setup.par.spef -rc_corner PVT_0P63V_100C.setup_rc
puts "write_parasitics -spef_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.hold.par.spef -rc_corner PVT_0P77V_0C.hold_rc" 
write_parasitics -spef_file /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.hold.par.spef -rc_corner PVT_0P77V_0C.hold_rc
puts "write_db pre_scale_final_gds" 
write_db pre_scale_final_gds
puts "ln -sfn pre_scale_final_gds latest" 
ln -sfn pre_scale_final_gds latest

# Write script out to a temporary file and execute it
set fp [open "/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/gds_scale.py" "w"]
puts -nonewline $fp "#!/usr/bin/python3

# Scale the final GDS by a factor of 4
# This is a tech hook that should be inserted post write_design

import sys

try:
    import gdspy
    print('Scaling down place & routed GDS')
except ImportError:
    print('Check your gdspy installation!')
    sys.exit()

# load the standard cell list from the gds folder and lop off '_SL' from end
cell_list = \[line.strip()\[:-3\] for line in open('/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/gds/cell_list.txt', 'r')\]

# Need to remove blk layer from any macros, else LVS rule deck interprets it as a polygon
blockage_datatype = 4

# load original_gds
gds_lib = gdspy.GdsLibrary().read_gds(infile='/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.gds', units='import')
# Iterate through cells that aren't part of standard cell library and scale
for k,v in gds_lib.cell_dict.items():
    if not any(cell in k for cell in cell_list):
        print('Scaling down ' + k)

        # Need to remove 'blk' layer from any macros, else LVS rule deck interprets it as a polygon
        # This has a layer datatype of 4
        # Then scale down the polygon
        v.polygons = \[poly.scale(0.25) for poly in v.polygons if not 4 in poly.datatypes\]

        # Scale paths
        for path in v.paths:
            path.scale(0.25)
            # gdspy bug: we also need to scale custom path extensions
            # Will be fixed by gdspy/pull#101 in next release
            for i, end in enumerate(path.ends):
                if isinstance(end, tuple):
                    path.ends\[i\] = tuple(\[e*0.25 for e in end\])

        # Scale and move labels
        for label in v.labels:
            # Bug fix for some EDA tools that didn't set MAG field in gds file
            # Maybe this is expected behavior in ASAP7 PDK
            # In gdspy/__init__.py: `kwargs\['magnification'\] = record\[1\]\[0\]`
            label.magnification = 0.25
            label.translate(-label.position\[0\]*0.75, -label.position\[1\]*0.75)

        # Scale and move references
        for ref in v.references:
            ref.magnification = 0.25
            ref.translate(-ref.origin\[0\]*0.75, -ref.origin\[1\]*0.75)
            ref.magnification = 1

# Overwrite original GDS file
gds_lib.write_gds('/home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/riscv_top.gds')
        "
close $fp

# Innovus <19.1 appends some bad LD_LIBRARY_PATHS, so remove them before executing python
set env(LD_LIBRARY_PATH) [join [lsearch -not -all -inline [split $env(LD_LIBRARY_PATH) ":"] "*INNOVUS*"] ":"]
python3 /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/par-rundir/gds_scale.py

puts "write_db post_scale_final_gds" 
write_db post_scale_final_gds
puts "ln -sfn post_scale_final_gds latest" 
ln -sfn post_scale_final_gds latest
puts "exit" 
exit