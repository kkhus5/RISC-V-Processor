#################################################################################
#
# Created by Genus(TM) Synthesis Solution 19.11-s087_1 on Sun Dec 13 19:46:42 PST 2020
#
#################################################################################

## library_sets
create_library_set -name PVT_0P63V_100C.setup_set \
    -timing { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_RVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_LVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_SLVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_SRAM_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_RVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_LVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_SLVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_SRAM_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_RVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_LVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_SLVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_SRAM_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_RVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_LVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_SLVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_SRAM_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_RVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_LVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_SLVT_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_SRAM_SS.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW1024x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x46_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x48_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x128_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x32_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x46_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x48_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW32x50_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x128_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x32_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x128_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x32_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x34_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x16_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x32_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x4_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x16_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x32_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x4_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x16_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x22_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x32_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x39_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x4_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x8_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x16_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x32_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x4_PVT_0P63V_100C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x8_PVT_0P63V_100C.lib }
create_library_set -name PVT_0P77V_0C.hold_set \
    -timing { /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_RVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_LVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_SLVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SIMPLE_SRAM_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_RVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_LVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_SLVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_AO_SRAM_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_RVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_LVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_SLVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_OA_SRAM_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_RVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_LVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_SLVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_SEQ_SRAM_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_RVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_LVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_SLVT_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/lib/asap7sc7p5t_24_INVBUF_SRAM_FF.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW1024x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x46_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x48_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW128x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x128_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x32_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x46_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x48_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW256x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW32x50_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x128_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x32_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW512x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x128_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x32_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x34_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM1RW64x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x16_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x32_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x4_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW128x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x16_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x32_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x4_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW16x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x16_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x22_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x32_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x39_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x4_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW32x8_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x16_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x32_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x4_PVT_0P77V_0C.lib \
              /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/SRAM2RW64x8_PVT_0P77V_0C.lib }

## timing_condition
create_timing_condition -name PVT_0P63V_100C.setup_cond \
    -library_sets { PVT_0P63V_100C.setup_set }
create_timing_condition -name PVT_0P77V_0C.hold_cond \
    -library_sets { PVT_0P77V_0C.hold_set }

## rc_corner
create_rc_corner -name PVT_0P63V_100C.setup_rc \
    -temperature 100.0 \
    -qrc_tech /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/qrc/qrcTechFile_typ03_scaled4xV06 \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0}
create_rc_corner -name PVT_0P77V_0C.hold_rc \
    -temperature 0.0 \
    -qrc_tech /home/cc/eecs151/fa20/class/eecs151-acb/project_skeleton/build/tech-asap7-cache/extracted/ASAP7_PDKandLIB.tar/ASAP7_PDKandLIB_v1p5/asap7libs_24.tar.bz2/asap7libs_24/qrc/qrcTechFile_typ03_scaled4xV06 \
    -pre_route_res 1.0 \
    -pre_route_cap 1.0 \
    -pre_route_clock_res 0.0 \
    -pre_route_clock_cap 0.0 \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name PVT_0P63V_100C.setup_delay \
    -early_timing_condition { PVT_0P63V_100C.setup_cond } \
    -late_timing_condition { PVT_0P63V_100C.setup_cond } \
    -early_rc_corner PVT_0P63V_100C.setup_rc \
    -late_rc_corner PVT_0P63V_100C.setup_rc
create_delay_corner -name PVT_0P77V_0C.hold_delay \
    -early_timing_condition { PVT_0P77V_0C.hold_cond } \
    -late_timing_condition { PVT_0P77V_0C.hold_cond } \
    -early_rc_corner PVT_0P77V_0C.hold_rc \
    -late_rc_corner PVT_0P77V_0C.hold_rc

## constraint_mode
create_constraint_mode -name my_constraint_mode \
    -sdc_files { genus_invs_des/genus.my_constraint_mode.sdc }

## analysis_view
create_analysis_view -name PVT_0P63V_100C.setup_view \
    -constraint_mode my_constraint_mode \
    -delay_corner PVT_0P63V_100C.setup_delay
create_analysis_view -name PVT_0P77V_0C.hold_view \
    -constraint_mode my_constraint_mode \
    -delay_corner PVT_0P77V_0C.hold_delay

## set_analysis_view
set_analysis_view -setup { PVT_0P63V_100C.setup_view } \
                  -hold { PVT_0P77V_0C.hold_view }
