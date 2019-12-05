#########################################################################################
# vlsi makefile
#########################################################################################

#########################################################################################
# general path variables
#########################################################################################
base_dir=$(abspath ..)
vlsi_dir=$(abspath .)
sim_dir=$(abspath .)

#########################################################################################
# vlsi types and rules
#########################################################################################
sim_name           ?= vcs # needed for GenerateSimFiles, but is unused
tech_name          ?= asap7
tech_dir           ?= $(if $(filter $(tech_name), asap7 saed32),$(vlsi_dir)/hammer/src/hammer-vlsi/technology/$(tech_name),$(vlsi_dir)/hammer-$(tech_name)-plugin/$(tech_name))
SMEMS_COMP         ?= $(tech_dir)/sram-compiler.json
SMEMS_CACHE        ?= $(tech_dir)/sram-cache.json
SMEMS_HAMMER       ?=$(tech_dir)/sram-cache.json
OBJ_DIR            ?= $(vlsi_dir)/build
SRC_DIR            ?= $(vlsi_dir)/src
ENV_YML            ?= $(vlsi_dir)/inst-env.yml
TECH_CONF          ?= $(vlsi_dir)/asap7.yml
DESIGN_CONF        ?= $(vlsi_dir)/design.yml
DESIGN_CONF_GL     ?= $(vlsi_dir)/design_gl.yml
DESIGN_CONF_PAR     ?= $(vlsi_dir)/design_par.yml
OUTPUT_DB          ?= $(OBJ_DIR)/syn-rundir/syn-output.json
PAR_OUTPUT_DB      ?= $(OBJ_DIR)/par-rundir/par-output.json
HAMMER_EXEC        ?= ./example-vlsi
VLSI_TOP           = riscv_top
CUSTOM_VLOG        = $(SRC_DIR)/riscv_top.v 

#MACROCOMPILER_MODE ?= -l $(SMEMS_CACHE) -hir $(SMEMS_HAMMER)
SRAM_CONF = $(OBJ_DIR)/sram_generator-output.json

#########################################################################################
# general rules
#########################################################################################
ALL_RTL = $(TOP_FILE) $(TOP_SMEMS_FILE) $(extra_v_includes)
extra_v_includes = $(build_dir)/EICG_wrapper.v $(vlsi_dir)/example.v
ifneq ($(CUSTOM_VLOG), )
	VLSI_RTL = $(CUSTOM_VLOG)
	VLSI_BB = /dev/null
else
	VLSI_RTL = $(ALL_RTL) $(extra_v_includes)
	VLSI_BB = $(sim_top_blackboxes)
endif

.PHONY: default verilog
default: all

all: drc lvs

verilog: $(ALL_RTL)

#########################################################################################
# import other necessary rules and variables
#########################################################################################
include $(base_dir)/common.mk


#########################################################################################
# synthesis input configuration
#########################################################################################
GENERATED_CONFS = $(SRAM_CONF)


#########################################################################################
# RTL Sim
#########################################################################################

.PHONY: sim-rtl
sim-rtl:
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_CONF) --obj_dir $(OBJ_DIR) sim

#########################################################################################
# SRAMs
#########################################################################################
SRAM_GENERATOR_CONF ?= $(OBJ_DIR)/sram_generator-input.yml
SRAM_CONF ?= $(OBJ_DIR)/sram_generator-output.json

## SRAM Generator
.PHONY: sram_generator srams
srams: sram_generator
sram_generator: $(SRAM_CONF)

$(SRAM_GENERATOR_CONF): $(SMEMS_HAMMER)
	mkdir -p $(dir $@)
	echo "$(vlsi_dir)"
	echo "vlsi.inputs.sram_parameters: '$(SMEMS_HAMMER)'" >> $@
	echo "vlsi.inputs.sram_parameters_meta: [\"transclude\", \"json2list\"]">> $@

$(SRAM_CONF): $(SRAM_GENERATOR_CONF)
	cd $(vlsi_dir) && $(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_CONF) -p $(SRAM_GENERATOR_CONF) --obj_dir $(OBJ_DIR) sram_generator
	cd $(vlsi_dir) && cp output.json $@

#########################################################################################
# Synthesis Sim
#########################################################################################

.PHONY: syn-to-sim
syn-to-sim:
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_CONF) -p $(OUTPUT_DB) --obj_dir $(OBJ_DIR) syn_to_sim

.PHONY: par-to-sim
par-to-sim:
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(PAR_OUTPUT_DB) -p $(DESIGN_CONF_PAR) --obj_dir $(OBJ_DIR) par_to_sim -o build/par-sim-input.json

.PHONY: syn-to-par

syn-to-par: build/par-input.json

build/par-input.json: build/syn-rundir/syn-output-full.json
	$(HAMMER_EXEC) -e inst-env.yml -p build/syn-rundir/syn-output-full.json -o build/par-input.json --obj_dir build syn-to-par

#########################################################################################
# Synthesis Sim
#########################################################################################

.PHONY: sim-syn
sim-syn:
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_CONF_GL) --obj_dir $(OBJ_DIR) sim

.PHONY: sim-par
sim-par:
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p build/par-sim-input.json -p $(DESIGN_CONF_PAR) --obj_dir $(OBJ_DIR) sim

output_dir = $(vlsi_dir)/output
bmark_output_dir = bmark_output
CONFIG = vlsi
timeout_cycles = 10000
bmark_timeout_cycles = 50000000
disasm := 2>
#which_disasm := $(shell which riscv-dis)
ifneq ($(which_disasm),)
	disasm := 3>&1 1>&2 2>&3 | $(which_disasm) $(DISASM_EXTENSION) >
endif
tests_isa_dir = $(vlsi_dir)/tests/isa

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
        final \

sim_dir = $(vlsi_dir)/build/sim-rundir

simv = $(sim_dir)/simv

exec_simv = $(simv) -q +ntb_random_seed_automatic

$(output_dir)/%.out: $(tests_isa_dir)/%.hex  $(simv)
	mkdir -p $(output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +max-cycles=$(timeout_cycles) +loadmem=$< $(disasm) $@ && [ $$PIPESTATUS -eq 0 ]

$(output_dir)/%.vpd: $(tests_isa_dir)/%.hex  $(simv)
	mkdir -p $(output_dir)
	cd $(sim_dir) && $(exec_simv)  +verbose +vcdplusfile=$@ +max-cycles=$(timeout_cycles) +loadmem=$< $(disasm) $(patsubst %.vpd,%.out,$@) && [ $$PIPESTATUS -eq 0 ]

asm_tests_out = $(foreach test, $(asm_p_tests), $(output_dir)/$(test).out)
asm_tests_vpd = $(foreach test, $(asm_p_tests), $(output_dir)/$(test).vpd)

run-asm-tests: $(asm_tests_out)
	@echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(asm_tests_out); echo;

run-asm-tests-debug: $(asm_tests_vpd)
	@echo; perl -ne 'print "  [$$1] $$ARGV \t$$2\n" if /\*{3}(.{8})\*{3}(.*)/' \
	       $(asm_tests_out); echo;

.PHONY: run-asm-tests run-bmark-test

#########################################################################################
# AUTO BUILD FLOW
#########################################################################################

.PHONY: buildfile
buildfile: $(OBJ_DIR)/hammer.d
# Tip: Set HAMMER_D_DEPS to an empty string to avoid unnecessary RTL rebuilds
# TODO: make this dependency smarter so that we don't need this at all
HAMMER_D_DEPS ?= $(GENERATED_CONFS)
$(OBJ_DIR)/hammer.d: Makefile
	$(HAMMER_EXEC) -e $(ENV_YML) -p $(TECH_CONF) -p $(DESIGN_CONF) -p $(SRAM_CONF) --obj_dir $(OBJ_DIR) build

ifneq ($(MAKECMDGOALS),clean)
-include $(OBJ_DIR)/hammer.d
endif

#########################################################################################
# general cleanup rule
#########################################################################################
.PHONY: clean
clean:
	rm -rf $(OBJ_DIR) $(OBJ_DIR)/hammer.d hammer-vlsi*.log __pycache__ output.json $(GENERATED_CONFS) $(gen_dir) $(output_dir) tech-asap7-cache

