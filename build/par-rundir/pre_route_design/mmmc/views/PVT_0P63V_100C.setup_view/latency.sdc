set_clock_latency -source -early -min -rise  -145.562 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -min -fall  -149.773 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -rise  -145.562 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -149.773 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -rise  -145.562 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -fall  -149.773 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -145.562 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -149.773 [get_ports {clk}] -clock clk 
