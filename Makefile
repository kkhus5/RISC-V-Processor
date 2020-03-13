#########################################################################################
# vlsi makefile
#########################################################################################

#########################################################################################
# general path variables
#########################################################################################
base_dir=$(abspath ..)
vlsi_dir=$(abspath .)
sim_dir=$(abspath .)
hammer_dir=/home/ff/eecs151/hammer

#########################################################################################
# vlsi types and rules
#########################################################################################
sim_name            ?= vcs # needed for GenerateSimFiles, but is unused
tech_name           ?= asap7
tech_dir            ?= $(if $(filter $(tech_name), asap7 saed32), $(hammer_dir)/src/hammer-vlsi/technology/$(tech_name))

SMEMS_COMP         ?= $(tech_dir)/sram-compiler.json
SMEMS_CACHE        ?= $(tech_dir)/sram-cache.json
SMEMS_HAMMER       ?= $(hammer_dir)/src/hammer-vlsi/technology/$(tech_name)sram-cache.json
ifeq ($(tech_name),asap7)
	MACROCOMPILER_MODE ?= --mode synflops
else
	MACROCOMPILER_MODE ?= -l $(SMEMS_CACHE) -hir $(SMEMS_HAMMER)
endif


OBJ_DIR             ?= $(vlsi_dir)/build
ENV_YML             ?= $(vlsi_dir)/inst-env.yml
TECH_CONF           ?= $(vlsi_dir)/asap7.yml

DESIGN_SYNPAR_CONF     ?= $(vlsi_dir)/synpar.yml
DESIGN_SIM_RTL_CONF    ?= $(vlsi_dir)/sim-rtl.yml
DESIGN_SIM_GL_SYN_CONF ?= $(vlsi_dir)/sim-gl-syn.yml
DESIGN_SIM_GL_PAR_CONF ?= $(vlsi_dir)/sim-gl-par.yml

SRAM_CONF           ?= $(OBJ_DIR)/sram_generator-output.json
OUTPUT_SYN_DB       ?= $(OBJ_DIR)/syn-rundir/syn-output-full.json
INPUT_PAR_DB        ?= $(OBJ_DIR)/par-input.json
OUTPUT_PAR_DB       ?= $(OBJ_DIR)/par-rundir/par-output-full.json
INPUT_DRC_DB        ?= $(OBJ_DIR)/drc-input.json
INPUT_LVS_DB        ?= $(OBJ_DIR)/lvs-input.json
INPUT_SIM_GL_SYN_DB ?= $(OBJ_DIR)/syn-to-sim_input.json
INPUT_SIM_GL_PAR_DB ?= $(OBJ_DIR)/par-to-sim_input.json
HAMMER_EXEC         ?= hammer-vlsi

#########################################################################################
# RISC-V Tests
#########################################################################################
sim_dir          = $(vlsi_dir)/build/sim-rundir
asm_output_dir   = $(vlsi_dir)/asm_output
bmark_output_dir = $(vlsi_dir)/bmark_output
asm_timeout_cycles   = 10000
bmark_timeout_cycles = 50000000
simv             = $(vlsi_dir)/build/sim-rundir/simv

#alu_tb = ALUTestbench
#alu_tb = ALUTestVectorTestbench

#.PHONY: run-alu
#run-alu: $(simv_alu)
#	$(simv_alu)

tests_asm_dir   = $(vlsi_dir)/tests/asm
tests_bmark_dir = $(vlsi_dir)/tests/bmark

#--------------------------------------------------------------------
# ASM Tests
#--------------------------------------------------------------------
asm_tests = \
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
bmark_tests = \
	cachetest \
	final \
	fib \
	sum \
	replace \

#--------------------------------------------------------------------
# Run
#--------------------------------------------------------------------

seed = $(shell date +%s)
exec_simv = $(simv) -q +ntb_random_seed_automatic

#--------------------------------------------------------------------
# Run
#--------------------------------------------------------------------
asm_tests_out   = $(foreach test, $(asm_tests),   $(asm_output_dir)/$(test).out)
bmark_tests_out = $(foreach test, $(bmark_tests), $(bmark_output_dir)/$(test).out)

$(asm_output_dir)/%.out: $(tests_asm_dir)/%.hex $(simv)
	mkdir -p $(asm_output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +max-cycles=$(asm_timeout_cycles) +loadmem=$< 2> $@ && [ $$PIPESTATUS -eq 0 ]

$(asm_output_dir)/%.vcd: $(tests_asm_dir)/%.hex  $(simv)
	mkdir -p $(asm_output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +vcdfile=$@ +max-cycles=$(asm_timeout_cycles) +loadmem=$< 2> $(patsubst %.vcd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

$(asm_output_dir)/%.vpd: $(tests_asm_dir)/%.hex  $(simv)
	mkdir -p $(asm_output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +vcdplusfile=$@ +max-cycles=$(asm_timeout_cycles) +loadmem=$< 2> $(patsubst %.vpd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

$(bmark_output_dir)/%.out: $(tests_bmark_dir)/%.hex $(simv)
	mkdir -p $(bmark_output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +max-cycles=$(bmark_timeout_cycles) +loadmem=$< 2> $@ && [ $$PIPESTATUS -eq 0 ]

$(bmark_output_dir)/%.vcd: $(tests_bmark_dir)/%.hex  $(simv)
	mkdir -p $(bmark_output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +vcdfile=$@ +max-cycles=$(bmark_timeout_cycles) +loadmem=$< 2> $(patsubst %.vcd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

$(bmark_output_dir)/%.vpd: $(tests_bmark_dir)/%.hex  $(simv)
	mkdir -p $(bmark_output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +vcdplusfile=$@ +max-cycles=$(bmark_timeout_cycles) +loadmem=$< 2> $(patsubst %.vpd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

# Very crude code to select which tests to run
TEST_ASM=$(test_asm)
TEST_BMARK=$(test_bmark)

ifeq ($(TEST_ASM), all)
runtest: $(asm_tests_out)
	@echo; perl -ne 'print "  [$$1] $$ARGV\t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(asm_tests_out); echo;
else ifneq ($(TEST_ASM), )
runtest: $(asm_output_dir)/$(TEST_ASM)
	@echo; perl -ne 'print "  [$$1] $$ARGV\t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(asm_output_dir)/$(basename $(TEST_ASM)).out; echo;
endif

ifeq ($(TEST_BMARK), all)
runtest: $(bmark_tests_out)
	@echo; perl -ne 'print "  [$$1] $$ARGV\t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(bmark_tests_out); echo;
else ifneq ($(TEST_BMARK), )
runtest: $(bmark_output_dir)/$(TEST_BMARK)
	@echo; perl -ne 'print "  [$$1] $$ARGV\t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(bmark_output_dir)/$(basename $(TEST_BMARK)).out; echo;
endif

ifeq ($(TEST_ASM), )
ifeq ($(TEST_BMARK), )
runtest:
	cd $(sim_dir) && $(exec_simv) +max-cycles=1000
endif
endif

.PHONY: runtest

#########################################################################################
# general rules
#########################################################################################
.PHONY: default
default: all

all: drc lvs

#########################################################################################
# AUTO BUILD FLOW
#########################################################################################

HAMMER_D_MK = $(OBJ_DIR)/hammer.d

.PHONY: buildfile
buildfile: $(HAMMER_D_MK)

$(HAMMER_D_MK): $(SRAM_CONF)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(DESIGN_SYNPAR_CONF) -p $(DESIGN_SIM_RTL_CONF) -p $(DESIGN_SIM_GL_SYN_CONF) -p $(DESIGN_SIM_GL_PAR_CONF) --obj_dir $(OBJ_DIR) build

MAKE = make

#########################################################################################
# RTL Sim
#########################################################################################

.PHONY: sim-rtl
sim-rtl: $(HAMMER_D_MK)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SIM_RTL_CONF) --obj_dir $(OBJ_DIR) sim
	make runtest

#########################################################################################
# Post-Synthesis Gate Level Sim
#########################################################################################

.PHONY: sim-gl-syn
sim-gl-syn: $(HAMMER_D_MK) $(INPUT_SIM_GL_SYN_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SIM_GL_SYN_CONF) -p $(INPUT_SIM_GL_SYN_DB) --obj_dir $(OBJ_DIR) sim
	make runtest
#########################################################################################
# Post-PAR Gate Level Sim
#########################################################################################

.PHONY: sim-gl-par
sim-gl-par: $(HAMMER_D_MK) $(INPUT_SIM_GL_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SIM_GL_PAR_CONF) -p $(INPUT_SIM_GL_PAR_DB) --obj_dir $(OBJ_DIR) sim
	make runtest

#########################################################################################
# Synthesis
#########################################################################################

.PHONY: syn
$(OUTPUT_SYN_DB) syn: $(HAMMER_D_MK)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(DESIGN_SYNPAR_CONF) -o $(OUTPUT_SYN_DB) --obj_dir $(OBJ_DIR) syn

#########################################################################################
# Synthesis to PAR
#########################################################################################

.PHONY: syn-to-par
$(INPUT_PAR_DB) syn-to-par: $(HAMMER_D_MK) $(OUTPUT_SYN_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_SYN_DB) -p $(DESIGN_SYNPAR_CONF) -o $(INPUT_PAR_DB) --obj_dir $(OBJ_DIR) syn_to_par

#########################################################################################
# Synthesis to Sim
#########################################################################################

.PHONY: syn-to-sim
$(INPUT_SIM_GL_SYN_DB) syn-to-sim: $(HAMMER_D_MK) $(OUTPUT_SYN_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_SYN_DB) -o $(INPUT_SIM_GL_SYN_DB) --obj_dir $(OBJ_DIR) syn_to_sim

#########################################################################################
# PAR
#########################################################################################

.PHONY: par
$(OUTPUT_PAR_DB) par: $(HAMMER_D_MK) $(INPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(SRAM_CONF) -p $(INPUT_PAR_DB) -o $(OUTPUT_PAR_DB) --obj_dir $(OBJ_DIR) par

#########################################################################################
# PAR to DRC
#########################################################################################

.PHONY: par-to-drc
par-to-drc: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_DRC_DB) --obj_dir $(OBJ_DIR) par_to_drc

#########################################################################################
# PAR to LVS
#########################################################################################

.PHONY: par-to-lvs
par-to-lvs: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_LVS_DB) --obj_dir $(OBJ_DIR) par_to_lvs

#########################################################################################
# PAR to Sim
#########################################################################################

.PHONY: par-to-sim
$(INPUT_SIM_GL_PAR_DB) par-to-sim: $(HAMMER_D_MK) $(OUTPUT_PAR_DB)
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(OUTPUT_PAR_DB) -o $(INPUT_SIM_GL_PAR_DB) --obj_dir $(OBJ_DIR) par_to_sim

#########################################################################################
# DRC
#########################################################################################

.PHONY: drc
drc: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) drc

#########################################################################################
# LVS
#########################################################################################

.PHONY: lvs
lvs: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) lvs

#########################################################################################
# Redo Synthesis
#########################################################################################

# Quick hack. Might not be ideal, but it works
redo-syn: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) redo-syn

#########################################################################################
# Redo PAR
#########################################################################################

# Quick hack. Might not be ideal, but it works
redo-par: $(HAMMER_D_MK)
	$(MAKE) -f $(HAMMER_D_MK) redo-par

#########################################################################################
# SRAM Compiler
#########################################################################################

.PHONY: srams
$(SRAM_CONF) srams:
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_SYNPAR_CONF) --obj_dir $(OBJ_DIR) sram_generator
	cp output.json $(SRAM_CONF)

#########################################################################################
# general cleanup rule
#########################################################################################
# Don't remove the extracted PDK dir, otherwise we have to rebuild it again
.PHONY: clean
clean:
	rm -rf $(HAMMER_D_MK) $(OBJ_DIR)/*rundir $(OBJ_DIR)/*.json hammer-vlsi*.log __pycache__ output.json *_output