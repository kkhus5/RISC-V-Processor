remove_clock -all
# create clock
create_clock -name clk -period ${CLOCK_PERIOD} {clk}
set_clock_uncertainty ${CLOCK_UNCERTAINTY} [get_clocks clk]

set_input_delay ${INPUT_DELAY} -clock clk [all_inputs]
set_output_delay ${OUTPUT_DELAY} -clock clk [all_outputs]
