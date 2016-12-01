set_time_unit -nanoseconds
create_clock -name {clk} -period 20 -waveform {0 10} [get_ports {clk}]