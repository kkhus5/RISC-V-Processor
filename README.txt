- Once you get the code, change <YOUR_LAB_ROOT_DIR> in the sim-*.yml files
to the path to your working directory

- Don't forget to clean up build/ folder in previous lab directories

- When you create new Verilog files, add them to the *.yml files

- Run simulation (sim-rtl)

+ Set the name of the testbench you want to test in sim-rtl.yml, then run
make sim-rtl

+ If you want to test the ASM test suite, run
make sim-rtl test_asm=all

+ If you want to test a single ASM test, run
make sim-rtl test_asm=rv32ui-p-add.out

or, to generate VPD file:
make sim-rtl test_asm=rv32ui-p-add.vpd

+ If you want to test the bmark test suite (C code -- intensive benchmarks), run
make sim-rtl test_bmark=all

+ If you want to run a single benchmark test,
make sim-rtl test_bmark=cachetest

