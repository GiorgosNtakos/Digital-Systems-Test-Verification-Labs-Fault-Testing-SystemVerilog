####################################################################
# run3_s5378
# Produces: baseline mapped + scan mapped + SPF
####################################################################
set mydesign s5378
set myclk CK

remove_design -all
analyze -f verilog ${mydesign}.v
elaborate ${mydesign}
current_design ${mydesign}
link

# Basic timing assumptions (sequential)
create_clock -period 4 ${myclk}
set_input_delay  2 -clock ${myclk} [remove_from_collection [all_inputs] ${myclk}]
set_output_delay 2 -clock ${myclk} [all_outputs]
set_driving_cell -library umcl18u250t2_wc -lib_cell INVD1 [remove_from_collection [all_inputs] ${myclk}]
set_load 0.1 [all_outputs]
set_max_fanout 8 [all_inputs]

############################
# 1) BASELINE (no scan)
############################
compile
check_design

# Reports for baseline
report_area  > s5378_baseline_area.rpt
report_timing -delay max > s5378_baseline_timing.rpt

write -format verilog -hierarchy -output s5378_baseline_synth.v
write_sdf s5378_baseline_synth.sdf
write_sdc s5378_baseline.sdc

############################
# 2) SCAN INSERTION (1 chain)
############################
set test_default_delay       0
set test_default_bidir_delay 0
set test_default_strobe      40
set test_default_period      100
set test_default_scan_style  multiplexed_flip_flop

set_scan_configuration -chain_count 1 -create_dedicated_scan_out_ports true

# DFT signals
set_dft_signal -view spec -type ScanClock  -port ${myclk}
set_dft_signal -view spec -type ScanEnable -port test_se -active_state 1
set_dft_signal -view spec -type ScanDataIn -port test_si
set_dft_signal -view spec -type ScanDataOut -port test_so

create_test_protocol -infer_clock -infer_async
dft_drc -verbose

insert_dft
compile -scan
dft_drc -verbose -coverage_estimate
report_scan_path -view existing -chain all

# Reports for scan
report_area  > s5378_scan_area.rpt
report_timing -delay max > s5378_scan_timing.rpt

write_test_protocol -output s5378.spf
change_names -rules verilog -hierarchy -verbose
write -format verilog -hierarchy -output s5378_scan_netlist.v
write_sdf -version 2.1 s5378_scan_netlist.sdf

exit
