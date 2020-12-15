tclmode

# Generated by Genus(TM) Synthesis Solution 19.11-s087_1, revision 1.356c
# Generated on: Sun Dec 13 19:46:06 PST 2020 (Mon Dec 14 03:46:06 GMT 2020)

set_screen_display -noprogress
set_dofile_abort exit

set lec_version [regsub {(-)[A-Za-z]} $env(LEC_VERSION) ""]

tcl_set_command_name_echo on

set_log_file fv/riscv_top/rtl_to_fv_map.log -replace

usage -auto -elapse

set_verification_information rtl_fv_map_db

read_implementation_information fv/riscv_top -revised fv_map

# Root attribute 'wlec_multithread_license_list' can be used to specify a license list
# for multithreaded processing. The default list is used otherwise.
set_parallel_option -threads 1,4 -norelease_license
set_compare_options -threads 1,4

set env(RC_VERSION)     "19.11-s087_1"
set env(CDN_SYNTH_ROOT) "/home/ff/eecs151/hammer-tools/cadence/GENUS/GENUS191/tools.lnx86"
set CDN_SYNTH_ROOT      "/home/ff/eecs151/hammer-tools/cadence/GENUS/GENUS191/tools.lnx86"
set env(CW_DIR) "/home/ff/eecs151/hammer-tools/cadence/GENUS/GENUS191/tools.lnx86/lib/chipware"
set CW_DIR      "/home/ff/eecs151/hammer-tools/cadence/GENUS/GENUS191/tools.lnx86/lib/chipware"

# default is to error out when module definitions are missing
set_undefined_cell black_box -noascend -both

add_notranslate_modules -library -both SRAM1RW64x128 SRAM2RW16x32

add_search_path . /home/ff/eecs151/hammer-tools/cadence/GENUS/GENUS191/tools.lnx86/lib/tech -library -both
read_library -liberty -both /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_RVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_LVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_SLVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_SRAM_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_RVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_LVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_SLVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_SRAM_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_RVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_LVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_SLVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_SRAM_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_RVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_LVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_SLVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_SRAM_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_RVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_LVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_SLVT_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_SRAM_SS.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW1024x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x46_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x48_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x128_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x32_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x46_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x48_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW32x50_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x128_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x32_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x128_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x32_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x34_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x16_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x32_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x4_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x16_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x32_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x4_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x16_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x22_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x32_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x39_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x4_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x8_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x16_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x32_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x4_PVT_0P63V_100C.lib /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x8_PVT_0P63V_100C.lib

set_undriven_signal 0 -golden
set_naming_style rc -golden
set_naming_rule "%s\[%d\]" -instance_array -golden
set_naming_rule "%s_reg" -register -golden
set_naming_rule "%L.%s" "%L\[%d\].%s" "%s" -instance -golden
set_naming_rule "%L.%s" "%L\[%d\].%s" "%s" -variable -golden

# Align LEC's treatment of mismatched port widths with constant
# connections with Genus's. Genus message CDFG-467 and LEC message
# HRC3.6 may indicate the presence of this issue. This option is
# only available with LEC 17.20-d301 or later.
set lec_version_required "17.20301"
if {$lec_version >= $lec_version_required} {
    set_hdl_options -const_port_extend
}
set_hdl_options -VERILOG_INCLUDE_DIR "incdir:sep:src:cwd"

add_search_path . -design -golden
read_design  -define SYNTHESIS  -merge bbox -golden -lastmod -noelab -verilog2k  /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALUdec.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ALU.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Cache.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Memory151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Riscv151.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_arbiter.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/riscv_top.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmediateGenerator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BranchComparator.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Adder.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ASelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BrUn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/BSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSR.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/CSRSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data1Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Data2Sel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/DataSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/FlipFlop.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/ImmSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/LdSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/MemRW.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/NOPSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCAddSignal.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCFour.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/PCSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegFile.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/RegWEn.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage1Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage2Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/Stage3Module.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/StoreSelMux.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSel.v /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/src/WBSelMux.v
elaborate_design -golden -root {riscv_top} -rootonly 

read_design -verilog95   -revised -lastmod -noelab fv/riscv_top/fv_map.v.gz
elaborate_design -revised -root {riscv_top}

uniquify -all -nolib -golden

report_design_data
report_black_box

set_flatten_model -seq_constant
set_flatten_model -seq_constant_x_to 0
set_flatten_model -nodff_to_dlat_zero
set_flatten_model -nodff_to_dlat_feedback
set_flatten_model -hier_seq_merge
set_flatten_model -gated_clock

#add_name_alias fv/riscv_top/fv_map.singlebit.original_name.alias.json.gz -revised
#set_mapping_method -alias -revised
#add_renaming_rule r1alias _reg((\\\[%w\\\])*(/U\\\$%d)*)$ @1 -type dff dlat -both

set_analyze_option -auto -report_map

write_hier_compare_dofile hier_tmp1.lec.do -noexact_pin_match -constraint -usage -replace -balanced_extraction -input_output_pin_equivalence -prepend_string "report_design_data; report_unmapped_points -notmapped; analyze_datapath -module -verbose ; analyze_datapath -share  -verbose"
run_hier_compare hier_tmp1.lec.do -dynamic_hierarchy

report_verification -hier -verbose

write_verification_information
report_verification_information

# Reports how effective the implementation information was.
# This command is only available with LEC 18.20-d330 or later.
set lec_version_required "18.20330"
if {$lec_version >= $lec_version_required} {
    report_implementation_information
}

set_system_mode lec

puts "No of compare points = [get_compare_points -count]"
puts "No of diff points    = [get_compare_points -NONequivalent -count]"
puts "No of abort points   = [get_compare_points -abort -count]"
puts "No of unknown points = [get_compare_points -unknown -count]"
if {[get_compare_points -count] == 0} {
    puts "---------------------------------"
    puts "ERROR: No compare points detected"
    puts "---------------------------------"
}
if {[get_compare_points -NONequivalent -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
}
if {[get_compare_points -abort -count] > 0} {
    puts "-----------------------------"
    puts "ERROR: Abort Points detected "
    puts "-----------------------------"
}
if {[get_compare_points -unknown -count] > 0} {
    puts "----------------------------------"
    puts "ERROR: Unknown Key Points detected"
    puts "----------------------------------"
}

vpxmode

exit -f
