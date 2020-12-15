set_clock_latency -source -early -min -rise  -140.337 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -min -fall  -147.358 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -rise  -140.337 [get_ports {clk}] -clock clk 
set_clock_latency -source -early -max -fall  -147.358 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -rise  -140.337 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -min -fall  -147.358 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -rise  -140.337 [get_ports {clk}] -clock clk 
set_clock_latency -source -late -max -fall  -147.358 [get_ports {clk}] -clock clk 
