
# Conditions: possible values - WC, TC, BC
set COND		TC;
# set_attribute lib_search_path
set_attribute lib_search_path ../library;#$env(STDCELL_LIBS);
set lib_bc "core9t_SOI_fast_3_60V_m60C.lib"; # best conditions t = -60 C
set lib_tc "core9t_SOI_typ_3_30V_25C.lib"; # typical conditions t = 25 C
set lib_wc "core9t_SOI_slow_3_00V_125C.lib"; # worst conditions t = 125 C
# set library
# set libraries
switch $COND { \
  "BC" { set_attribute library $lib_bc; }
  "TC" { set_attribute library $lib_tc; }
  "WC" { set_attribute library $lib_wc; }
  "default" { puts ":: ERROR: Unknown condition specified - $COND"; break; }
}
# read verilog code
read_hdl ../rtl/prod.v;

# this creates a technology-independent schematic
elaborate prod;
#
read_sdc ../synth/prod.sdc;
#
synthesize -to_mapped -effort high
#write_sdc > ../synth/prod_synth.sdc;
write_hdl -mapped > ../synth/prod_netlist.v;
#write_sdf -timescale ps -edges edged -no_input_port_nets -no_escape > ./synt_sdf/prod.sdf; -no_input_port_nets -no_output_port_nets
#write_sdf -timescale ps -interconn interconnect -edges check_edge -no_escape > ../synth/prod.sdf;
#write_sdf -timescale ps > ../synth/prod.sdf;
#report area > ../report/prod_area_report;
#report timing > ../report/prod_timing_report;
