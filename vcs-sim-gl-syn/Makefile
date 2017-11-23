#=======================================================================
#=======================================================================
# UCB VLSI FLOW: Makefile for vcs-sim-rtl
#-----------------------------------------------------------------------
# Yunsup Lee (yunsup@cs.berkeley.edu)
#
# This makefile will build a rtl simulator and run various tests to
# verify proper functionality.
#

include ../Makefrag

default : all

base_dir  = ..
sim_dir = .
output_dir = output
bmark_output_dir = bmark_output
CONFIG = vlsi
timeout_cycles = 10000
bmark_timeout_cycles = 50000000
disasm := 2>
which_disasm := $(shell which riscv-dis)
ifneq ($(which_disasm),)
	disasm := 3>&1 1>&2 2>&3 | $(which_disasm) $(DISASM_EXTENSION) >
endif

#--------------------------------------------------------------------
# Sources
#--------------------------------------------------------------------

# Verilog sources


toplevel = riscv_top

srcdir = $(base_dir)/src
vsrcs = \
	$(srcdir)/const.vh \
	$(srcdir)/riscv_test_harness.v \
	$(UCB_VLSI_HOME)/stdcells/synopsys-32nm/multi_vt/verilog/SRAM1RW256x128_new.v \
	$(UCB_VLSI_HOME)/stdcells/synopsys-32nm/multi_vt/verilog/SRAM1RW64x32_new.v \
	../dc-syn/current-dc/results/$(toplevel).mapped.v \
	$(srcdir)/backup_mem.v \

#--------------------------------------------------------------------
# Build rules
#--------------------------------------------------------------------
verilog_cells_dir = $(UCB_VLSI_HOME)/stdcells/$(UCB_STDCELLS)/verilog

VCS = vcs -full64

# If don't use initreg/initmem, then get X propagated
# through everywhere
#VCS_OPTS = -notice -line +lint=all,noVCDE,noONGS,noUI +warn=noTMR -error=PCWM-L -timescale=1ns/10ps -quiet \
#	+incdir+$(srcdir) \
#	+notimingcheck +delay_mode_zero +no_notifier +evalorder +udpsched \
#	+v2k +vcs+lic+wait \
#	+vcs+initreg+0 \
#	+vcs+initmem+0 \
#	-top rocketTestHarness \
#	-v $(verilog_cells_dir)/cells_rvt.v \
#	-debug_pp \
#	+define+CLOCK_PERIOD=$(vcs_clock_period) $(vsrcs) \

VCS_OPTS = -notice -PP -line +lint=all,noVCDE +v2k -timescale=1ns/10ps -debug \
	+incdir+$(srcdir) \
	-P ../dc-syn/current-dc/access.tab -debug \
	+evalorder +udpsched +delay_mode_zero \
	+define+INPUT_DELAY=$(input_delay) \
	+define+CLOCK_PERIOD=$(vcs_clock_period) \
	+define+GATELEVEL=1 \
	+vcs+initreg+0 \
	+vcs+initmem+0 \
	-v $(verilog_cells_dir)/cells_rvt.v \
	-v $(verilog_cells_dir)/cells_hvt.v \
	-v $(verilog_cells_dir)/cells_lvt.v \
	$(vsrcs)


	#-P ../dc-syn/current-dc/access.tab -debug \

	#+sdfverbose -sdf typ:$(toplevel):../dc-syn/current-dc/results/$(toplevel).mapped.sdf \
#vcs_sim = simv
#$(vcs_sim) : Makefile $(vsrcs)
#	$(VCS) $(VCS_OPTS) +incdir+$(srcdir) -o $(vcs_sim) \
#  +evalorder +udpsched \
#  +define+CLOCK_PERIOD=$(vcs_clock_period) \
#  -v $(verilog_cells_dir)/cells_rvt.v \
#  -v $(verilog_cells_dir)/cells_hvt.v \
#  -v $(verilog_cells_dir)/cells_lvt.v \
#	-v $(verilog_cells_dir)/pll.v \
#	-v $(verilog_cells_dir)/io_wb.v \
#   $(vsrcs)


#--------------------------------------------------------------------
# Build the simulator
#--------------------------------------------------------------------

simv = $(sim_dir)/simv-$(CONFIG)
$(simv) : $(sim_vsrcs)
	cd $(sim_dir) && \
	$(VCS) $(VCS_OPTS) -o $(simv) \

simv_debug = $(sim_dir)/simv-$(CONFIG)-debug
$(simv_debug) : $(sim_vsrcs)
	cd $(sim_dir) && \
	$(VCS) $(VCS_OPTS) -o $(simv_debug) \
	+define+DEBUG -debug_pp \


tests_isa_dir = $(base_dir)/tests/isa

	#asmtest \

asm_p_tests = \
	rv32ui-p-add \
	rv32ui-p-addi \
	rv32ui-p-and \
	rv32ui-p-andi \
	rv32ui-p-auipc \
	rv32ui-p-beq \
	rv32ui-p-bge \
	rv32ui-p-bgeu \
	rv32ui-p-blt \
	rv32ui-p-bltu \
	rv32ui-p-bne \
	rv32ui-p-j \
	rv32ui-p-jal \
	rv32ui-p-jalr \
	rv32ui-p-lb \
	rv32ui-p-lbu \
	rv32ui-p-lh \
	rv32ui-p-lhu \
	rv32ui-p-lui \
	rv32ui-p-lw \
	rv32ui-p-or \
	rv32ui-p-ori \
	rv32ui-p-sb \
	rv32ui-p-sh \
	rv32ui-p-simple \
	rv32ui-p-sll \
	rv32ui-p-slli \
	rv32ui-p-slt \
	rv32ui-p-slti \
	rv32ui-p-sra \
	rv32ui-p-srai \
	rv32ui-p-srl \
	rv32ui-p-srli \
	rv32ui-p-sub \
	rv32ui-p-sw \
	rv32ui-p-xor \
	rv32ui-p-xori \


#--------------------------------------------------------------------
# Benchmark Tests
#--------------------------------------------------------------------

	#median.riscv \
	#qsort.riscv \
	#towers.riscv \
	#vvadd.riscv \
	#mm.riscv \
	#dhrystone.riscv \
	#spmv.riscv \

#tests_bmark_dir = $(base_dir)/riscv-tools/riscv-tests/benchmarks
bmarks = \
	cachetest \
	final \
	fib \
	sum \
	replace \

#--------------------------------------------------------------------
# Run
#--------------------------------------------------------------------

seed = $(shell date +%s)
exec_simv = $(simv) -ucli -do run.tcl -q +ntb_random_seed_automatic
exec_simv_debug = $(simv_debug) -ucli -do run.tcl -q +ntb_random_seed_automatic

#--------------------------------------------------------------------
# Run
#--------------------------------------------------------------------
asm_tests_out = $(foreach test, $(asm_p_tests), $(output_dir)/$(test).out)
bmarks_out = $(foreach test, $(bmarks), $(bmark_output_dir)/$(test).out)
mt_bmarks_out = $(foreach test, $(mt_bmarks), $(output_dir)/$(test).out)

asm_tests_vcd = $(foreach test, $(asm_p_tests), $(output_dir)/$(test).vcd)
bmarks_vcd = $(foreach test, $(bmarks), $(bmark_output_dir)/$(test).vcd)
mt_bmarks_vcd = $(foreach test, $(mt_bmarks), $(output_dir)/$(test).vcd)

asm_tests_vpd = $(foreach test, $(asm_p_tests), $(output_dir)/$(test).vpd)
bmarks_vpd = $(foreach test, $(bmarks), $(bmark_output_dir)/$(test).vpd)
mt_bmarks_vpd = $(foreach test, $(mt_bmarks), $(output_dir)/$(test).vpd)

asm_tests_saif = $(foreach test, $(asm_p_tests), $(output_dir)/$(test).saif)
bmarks_saif = $(foreach test, $(bmarks), $(bmark_output_dir)/$(test).saif)
mt_bmarks_saif = $(foreach test, $(mt_bmarks), $(output_dir)/$(test).saif)

$(output_dir)/%.out: $(tests_isa_dir)/%.hex  $(simv)
	mkdir -p $(output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +max-cycles=$(timeout_cycles) +loadmem=$< $(disasm) $@ && [ $$PIPESTATUS -eq 0 ]

$(output_dir)/%.vcd: $(tests_isa_dir)/%.hex  $(simv_debug)
	mkdir -p $(output_dir)
	cd $(sim_dir) && $(exec_simv_debug)  +verbose +vcdfile=$@ +max-cycles=$(timeout_cycles) +loadmem=$< $(disasm) $(patsubst %.vcd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

$(output_dir)/%.vpd: $(tests_isa_dir)/%.hex  $(simv_debug)
	mkdir -p $(output_dir)
	cd $(sim_dir) && $(exec_simv_debug)  +verbose +vcdplusfile=$@ +max-cycles=$(timeout_cycles) +loadmem=$< $(disasm) $(patsubst %.vpd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

$(output_dir)/%.saif: $(output_dir)/%.hex  $(simv_debug)
	mkdir -p $(output_dir)
	cd $(sim_dir) && rm -f $(output_dir)/output_dirpipe-$*.vcd && vcd2saif -input $(output_dir)/pipe-$*.vcd -pipe "$(exec_simv_debug)  +verbose +vcdfile=$(output_dir)/pipe-$*.vcd +max-cycles=$(bmark_timeout_cycles) +loadmem=$<" -output $@ > $(patsubst %.saif,%.out,$@) 2>&1



$(bmark_output_dir)/%.out: $(tests_bmark_dir)/%.hex  $(simv)
	mkdir -p $(bmark_output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +max-cycles=$(bmark_timeout_cycles) +loadmem=$< $(disasm) $@ && [ $$PIPESTATUS -eq 0 ]

$(bmark_output_dir)/%.vcd: $(tests_bmark_dir)/%.hex  $(simv_debug)
	mkdir -p $(bmark_output_dir)
	cd $(sim_dir) && $(exec_simv_debug)  +verbose +vcdfile=$@ +max-cycles=$(bmark_timeout_cycles) +loadmem=$< $(disasm) $(patsubst %.vcd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

$(bmark_output_dir)/%.vpd: $(tests_bmark_dir)/%.hex  $(simv_debug)
	mkdir -p $(bmark_output_dir)
	cd $(sim_dir) && $(exec_simv_debug)  +verbose +vcdplusfile=$@ +max-cycles=$(bmark_timeout_cycles) +loadmem=$< $(disasm) $(patsubst %.vpd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

$(bmark_output_dir)/%.saif: $(bmark_output_dir)/%.hex  $(simv_debug)
	mkdir -p $(bmark_output_dir)
	cd $(sim_dir) && rm -f $(bmark_output_dir)/output_dirpipe-$*.vcd && vcd2saif -input $(bmark_output_dir)/pipe-$*.vcd -pipe "$(exec_simv_debug)  +verbose +vcdfile=$(bmark_output_dir)/pipe-$*.vcd +max-cycles=$(bmark_timeout_cycles) +loadmem=$<" -output $@ > $(patsubst %.saif,%.out,$@) 2>&1


run-asm-tests: $(asm_tests_out)
	@echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(asm_tests_out); echo;



run-bmark-test: $(bmarks_out)
	@echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(bmarks_out); echo;

run-bmark-test-debug: $(bmarks_vpd)
	@echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(bmarks_out); echo;



run: run-asm-tests 
run-debug: run-asm-tests-debug 

.PHONY: run-asm-tests run-bmark-test run-mt-tests
.PHONY: run-asm-tests-debug run-bmark-test-debug run-mt-tests-debug
.PHONY: run run-debug

junk += $(output_dir)

#--------------------------------------------------------------------
# Default make target
#--------------------------------------------------------------------

.PHONY: run

all : $(simv)

#--------------------------------------------------------------------
# Clean up
#--------------------------------------------------------------------

junk += simv* *.vpd *.key DVE* .vcs* timestamp

clean :
	rm -rf $(junk) *~ \#* *.log *.cmd *.daidir

