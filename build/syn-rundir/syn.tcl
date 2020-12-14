puts "set_db hdl_error_on_blackbox true" 
set_db hdl_error_on_blackbox true
puts "set_db max_cpus_per_server 4" 
set_db max_cpus_per_server 4
puts "set_db lp_clock_gating_infer_enable  true" 
set_db lp_clock_gating_infer_enable  true
puts "set_db lp_clock_gating_prefix  {CLKGATE}" 
set_db lp_clock_gating_prefix  {CLKGATE}
puts "set_db lp_insert_clock_gating  true" 
set_db lp_insert_clock_gating  true
puts "set_db lp_clock_gating_hierarchical true" 
set_db lp_clock_gating_hierarchical true
puts "set_db lp_insert_clock_gating_incremental true" 
set_db lp_insert_clock_gating_incremental true
puts "set_db lp_clock_gating_register_aware true" 
set_db lp_clock_gating_register_aware true
puts "read_mmmc /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/mmmc.tcl" 
read_mmmc /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/mmmc.tcl
puts "read_physical -lef { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/techlef_misc/asap7_tech_4x_170803.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_R_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_L_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SL_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SRAM_4x_170912.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW32x50_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x34_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x22_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x39_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x8_x4.lef }" 
read_physical -lef { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/techlef_misc/asap7_tech_4x_170803.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_R_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_L_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SL_4x_170912.lef /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lef/scaled/asap7sc7p5t_24_SRAM_4x_170912.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW1024x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x46_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x48_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW256x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW32x50_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW512x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x128_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x34_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM1RW64x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW128x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW16x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x22_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x39_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW32x8_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x16_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x32_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x4_x4.lef /home/ff/eecs151/hammer/src/hammer-vlsi/technology/asap7/sram_compiler/memories/lef/SRAM2RW64x8_x4.lef }
puts "read_hdl { /home/ff/eecs151/verilog_lib/EECS151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALUdec.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALU.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Cache.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Memory151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Riscv151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_arbiter.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_top.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmediateGenerator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BranchComparator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Adder.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BrUn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSR.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSRSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data1Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data2Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/DataSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/FlipFlop.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/MemRW.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCAddSignal.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCFour.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegFile.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegWEn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage1Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage2Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage3Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSelMux.v }" 
read_hdl { /home/ff/eecs151/verilog_lib/EECS151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALUdec.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALU.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Cache.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Memory151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Riscv151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_arbiter.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_top.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmediateGenerator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BranchComparator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Adder.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BrUn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSR.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSRSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data1Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data2Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/DataSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/FlipFlop.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/MemRW.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCAddSignal.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCFour.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegFile.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegWEn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage1Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage2Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage3Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSelMux.v }
puts "elaborate riscv_top" 
elaborate riscv_top
puts "init_design -top riscv_top" 
init_design -top riscv_top
puts "set_db root: .auto_ungroup none" 
set_db root: .auto_ungroup none
puts "set_units -capacitance 1.0pF" 
set_units -capacitance 1.0pF
puts "set_load_unit -picofarads 1" 
set_load_unit -picofarads 1
puts "set_units -time 1.0ps" 
set_units -time 1.0ps

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
            
puts "write_db -to_file pre_syn_generic" 
write_db -to_file pre_syn_generic
puts "syn_generic" 
syn_generic
puts "write_db -to_file pre_syn_map" 
write_db -to_file pre_syn_map
puts "syn_map" 
syn_map
puts "write_db -to_file pre_add_tieoffs" 
write_db -to_file pre_add_tieoffs
puts "set_db message:WSDF-201 .max_print 20" 
set_db message:WSDF-201 .max_print 20
puts "set_db use_tiehilo_for_const duplicate" 
set_db use_tiehilo_for_const duplicate
puts "add_tieoffs -high TIEHIx1_ASAP7_75t_SL -low TIELOx1_ASAP7_75t_SL -max_fanout 1 -verbose" 
add_tieoffs -high TIEHIx1_ASAP7_75t_SL -low TIELOx1_ASAP7_75t_SL -max_fanout 1 -verbose
puts "write_db -to_file pre_write_regs" 
write_db -to_file pre_write_regs

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
        
puts "write_db -to_file pre_generate_reports" 
write_db -to_file pre_generate_reports
puts "write_reports -directory reports -tag final" 
write_reports -directory reports -tag final
puts "write_db -to_file pre_write_outputs" 
write_db -to_file pre_write_outputs
puts "write_hdl > /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.v" 
write_hdl > /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.v
puts "write_script > riscv_top.mapped.scr" 
write_script > riscv_top.mapped.scr
puts "write_sdc -view PVT_0P63V_100C.setup_view > /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.sdc" 
write_sdc -view PVT_0P63V_100C.setup_view > /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.sdc
puts "write_sdf > /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.sdf" 
write_sdf > /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/syn-rundir/riscv_top.mapped.sdf
puts "write_design -innovus -hierarchical -gzip_files riscv_top" 
write_design -innovus -hierarchical -gzip_files riscv_top
puts "quit" 
quit