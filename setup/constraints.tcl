# create clock
create_clock -name clk -period ${CLOCK_PERIOD} {clk}
set_clock_uncertainty ${CLOCK_UNCERTAINTY} [get_clocks clk]

#set_clock_groups -asynchronous \
#  -group { fast_clk } \
#  -group { slow_clk } \

set_clock_gate_latency -clock [get_clocks *] -stage 0 -fanout_latency {1-inf 0.15} -overwrite

set_input_delay ${INPUT_DELAY} -clock clk [all_inputs]
set_output_delay ${OUTPUT_DELAY} -clock clk [all_outputs]

