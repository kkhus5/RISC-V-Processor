# ####################################################################

#  Created by Genus(TM) Synthesis Solution 19.11-s087_1 on Mon Dec 14 16:35:00 PST 2020

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1ps

# Set the current design
current_design riscv_top

create_clock -name "clk" -period 900.0 -waveform {0.0 450.0} [get_ports clk]
set_load -pin_load 1.0 [get_ports mem_req_valid]
set_load -pin_load 1.0 [get_ports mem_req_rw]
set_load -pin_load 1.0 [get_ports {mem_req_addr[27]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[26]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[25]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[24]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[23]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[22]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[21]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[20]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[19]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[18]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[17]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[16]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[15]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[14]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[13]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[12]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[11]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[10]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[9]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[8]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[7]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[6]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[5]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[4]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[3]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[2]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[1]}]
set_load -pin_load 1.0 [get_ports {mem_req_addr[0]}]
set_load -pin_load 1.0 [get_ports {mem_req_tag[4]}]
set_load -pin_load 1.0 [get_ports {mem_req_tag[3]}]
set_load -pin_load 1.0 [get_ports {mem_req_tag[2]}]
set_load -pin_load 1.0 [get_ports {mem_req_tag[1]}]
set_load -pin_load 1.0 [get_ports {mem_req_tag[0]}]
set_load -pin_load 1.0 [get_ports mem_req_data_valid]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[127]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[126]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[125]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[124]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[123]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[122]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[121]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[120]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[119]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[118]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[117]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[116]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[115]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[114]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[113]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[112]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[111]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[110]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[109]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[108]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[107]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[106]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[105]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[104]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[103]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[102]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[101]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[100]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[99]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[98]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[97]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[96]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[95]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[94]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[93]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[92]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[91]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[90]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[89]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[88]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[87]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[86]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[85]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[84]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[83]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[82]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[81]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[80]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[79]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[78]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[77]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[76]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[75]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[74]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[73]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[72]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[71]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[70]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[69]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[68]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[67]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[66]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[65]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[64]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[63]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[62]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[61]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[60]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[59]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[58]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[57]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[56]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[55]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[54]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[53]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[52]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[51]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[50]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[49]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[48]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[47]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[46]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[45]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[44]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[43]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[42]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[41]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[40]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[39]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[38]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[37]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[36]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[35]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[34]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[33]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[32]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[31]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[30]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[29]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[28]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[27]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[26]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[25]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[24]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[23]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[22]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[21]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[20]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[19]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[18]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[17]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[16]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[15]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[14]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[13]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[12]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[11]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[10]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[9]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[8]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[7]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[6]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[5]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[4]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[3]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[2]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[1]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_bits[0]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[15]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[14]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[13]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[12]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[11]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[10]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[9]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[8]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[7]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[6]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[5]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[4]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[3]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[2]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[1]}]
set_load -pin_load 1.0 [get_ports {mem_req_data_mask[0]}]
set_load -pin_load 1.0 [get_ports {csr[31]}]
set_load -pin_load 1.0 [get_ports {csr[30]}]
set_load -pin_load 1.0 [get_ports {csr[29]}]
set_load -pin_load 1.0 [get_ports {csr[28]}]
set_load -pin_load 1.0 [get_ports {csr[27]}]
set_load -pin_load 1.0 [get_ports {csr[26]}]
set_load -pin_load 1.0 [get_ports {csr[25]}]
set_load -pin_load 1.0 [get_ports {csr[24]}]
set_load -pin_load 1.0 [get_ports {csr[23]}]
set_load -pin_load 1.0 [get_ports {csr[22]}]
set_load -pin_load 1.0 [get_ports {csr[21]}]
set_load -pin_load 1.0 [get_ports {csr[20]}]
set_load -pin_load 1.0 [get_ports {csr[19]}]
set_load -pin_load 1.0 [get_ports {csr[18]}]
set_load -pin_load 1.0 [get_ports {csr[17]}]
set_load -pin_load 1.0 [get_ports {csr[16]}]
set_load -pin_load 1.0 [get_ports {csr[15]}]
set_load -pin_load 1.0 [get_ports {csr[14]}]
set_load -pin_load 1.0 [get_ports {csr[13]}]
set_load -pin_load 1.0 [get_ports {csr[12]}]
set_load -pin_load 1.0 [get_ports {csr[11]}]
set_load -pin_load 1.0 [get_ports {csr[10]}]
set_load -pin_load 1.0 [get_ports {csr[9]}]
set_load -pin_load 1.0 [get_ports {csr[8]}]
set_load -pin_load 1.0 [get_ports {csr[7]}]
set_load -pin_load 1.0 [get_ports {csr[6]}]
set_load -pin_load 1.0 [get_ports {csr[5]}]
set_load -pin_load 1.0 [get_ports {csr[4]}]
set_load -pin_load 1.0 [get_ports {csr[3]}]
set_load -pin_load 1.0 [get_ports {csr[2]}]
set_load -pin_load 1.0 [get_ports {csr[1]}]
set_load -pin_load 1.0 [get_ports {csr[0]}]
group_path -weight 1.000000 -name cg_enable_group_clk -through [list \
  [get_pins cpu/s1_to_s2_imm/CLKGATE_RC_CG_HIER_INST0/enable]  \
  [get_pins cpu/s1_to_s2_inst/CLKGATE_RC_CG_HIER_INST1/enable]  \
  [get_pins cpu/s1_to_s2_pc/CLKGATE_RC_CG_HIER_INST2/enable]  \
  [get_pins cpu/s1_to_s2_rs1/CLKGATE_RC_CG_HIER_INST3/enable]  \
  [get_pins cpu/s1_to_s2_rs2/CLKGATE_RC_CG_HIER_INST4/enable]  \
  [get_pins cpu/s2_to_s3_alu/CLKGATE_RC_CG_HIER_INST5/enable]  \
  [get_pins cpu/s2_to_s3_inst/CLKGATE_RC_CG_HIER_INST6/enable]  \
  [get_pins cpu/s2_to_s3_pc/CLKGATE_RC_CG_HIER_INST7/enable]  \
  [get_pins cpu/stage1/pcreg/CLKGATE_RC_CG_HIER_INST8/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST9/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST10/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST11/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST12/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST13/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST14/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST15/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST16/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST17/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST18/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST19/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST20/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST21/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST22/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST23/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST24/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST25/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST26/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST27/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST28/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST29/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST30/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST31/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST32/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST33/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST34/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST35/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST36/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST37/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST38/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST39/enable]  \
  [get_pins cpu/stage3/csr/CLKGATE_RC_CG_HIER_INST40/enable]  \
  [get_pins mem/dcache/CLKGATE_RC_CG_HIER_INST41/enable]  \
  [get_pins mem/icache/CLKGATE_RC_CG_HIER_INST42/enable]  \
  [get_pins cpu/s1_to_s2_imm/CLKGATE_RC_CG_HIER_INST0/enable]  \
  [get_pins cpu/s1_to_s2_inst/CLKGATE_RC_CG_HIER_INST1/enable]  \
  [get_pins cpu/s1_to_s2_pc/CLKGATE_RC_CG_HIER_INST2/enable]  \
  [get_pins cpu/s1_to_s2_rs1/CLKGATE_RC_CG_HIER_INST3/enable]  \
  [get_pins cpu/s1_to_s2_rs2/CLKGATE_RC_CG_HIER_INST4/enable]  \
  [get_pins cpu/s2_to_s3_alu/CLKGATE_RC_CG_HIER_INST5/enable]  \
  [get_pins cpu/s2_to_s3_inst/CLKGATE_RC_CG_HIER_INST6/enable]  \
  [get_pins cpu/s2_to_s3_pc/CLKGATE_RC_CG_HIER_INST7/enable]  \
  [get_pins cpu/stage1/pcreg/CLKGATE_RC_CG_HIER_INST8/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST9/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST10/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST11/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST12/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST13/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST14/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST15/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST16/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST17/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST18/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST19/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST20/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST21/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST22/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST23/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST24/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST25/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST26/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST27/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST28/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST29/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST30/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST31/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST32/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST33/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST34/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST35/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST36/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST37/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST38/enable]  \
  [get_pins cpu/stage1/regfile/CLKGATE_RC_CG_HIER_INST39/enable]  \
  [get_pins cpu/stage3/csr/CLKGATE_RC_CG_HIER_INST40/enable]  \
  [get_pins mem/dcache/CLKGATE_RC_CG_HIER_INST41/enable]  \
  [get_pins mem/icache/CLKGATE_RC_CG_HIER_INST42/enable] ]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports mem_req_ready]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports mem_req_data_ready]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports mem_resp_valid]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_tag[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_tag[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_tag[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_tag[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_tag[0]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[127]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[126]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[125]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[124]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[123]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[122]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[121]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[120]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[119]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[118]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[117]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[116]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[115]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[114]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[113]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[112]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[111]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[110]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[109]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[108]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[107]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[106]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[105]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[104]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[103]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[102]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[101]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[100]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[99]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[98]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[97]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[96]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[95]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[94]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[93]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[92]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[91]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[90]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[89]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[88]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[87]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[86]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[85]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[84]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[83]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[82]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[81]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[80]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[79]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[78]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[77]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[76]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[75]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[74]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[73]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[72]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[71]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[70]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[69]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[68]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[67]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[66]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[65]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[64]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[63]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[62]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[61]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[60]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[59]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[58]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[57]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[56]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[55]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[54]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[53]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[52]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[51]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[50]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[49]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[48]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[47]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[46]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[45]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[44]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[43]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[42]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[41]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[40]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[39]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[38]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[37]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[36]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[35]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[34]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[33]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[32]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[31]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[30]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[29]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[28]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[27]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[26]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[25]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[24]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[23]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[22]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[21]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[20]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[19]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[18]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[17]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[16]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 180.0 [get_ports {mem_resp_data[0]}]
set_clock_uncertainty -setup 100.0 [get_clocks clk]
set_clock_uncertainty -hold 100.0 [get_clocks clk]
