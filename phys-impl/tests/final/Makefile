#=======================================================================
# Makefile for EECS151/251A final test
#-----------------------------------------------------------------------

default: all

#--------------------------------------------------------------------
# Build rules
#--------------------------------------------------------------------

RISCV_GCC = riscv64-unknown-elf-gcc
RISCV_GCC_OPTS = -fpic -nostdlib -nostartfiles -Wa,-march=RVI -m32
#RISCV_GCC_OPTS = -fpic -nostdlib -nostartfiles -Wa,-march=RVI -m32 -Wl,-Ttext=0x2000
RISCV_OBJDUMP = riscv64-unknown-elf-objdump --disassemble-all --section=.text --section=.data --section=.bss
RISCV_ELF2HEX = elf2hex

tests = final

#------------------------------------------------------------
# Build assembly tests

%.hex: %.rv
	($(RISCV_ELF2HEX) 16 8192 $< 2> /dev/null || $(RISCV_ELF2HEX) 16 16384 $<) > $@

%.dump: %.rv
	$(RISCV_OBJDUMP) $< > $@

%.rv: %.c start.s %.ld
	$(RISCV_GCC) $(RISCV_GCC_OPTS) -T $*.ld $^ -o $@

tests_rv = $(addsuffix .rv, $(tests))
tests_dump = $(addsuffix .dump, $(tests))
tests_hex = $(addsuffix .hex, $(tests))

.PRECIOUS: $(tests_rv)

junk += $(tests_rv) $(tests_dump) $(tests_hex)

#------------------------------------------------------------
# Default

all: $(tests_dump) $(tests_hex)

#------------------------------------------------------------
# Clean up

clean:
	rm -rf $(junk)
