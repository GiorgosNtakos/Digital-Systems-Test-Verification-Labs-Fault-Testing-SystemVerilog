####################################################################
# run4_2chain_fixed.tcl  (s1423 full-scan, 2 chains)
####################################################################
set mydesign s1423
set myclk CK
set outtag  s1423_2chain

remove_design -all
analyze -f verilog ${mydesign}.v
elaborate ${mydesign}
current_design ${mydesign}
link

create_clock -period 4 ${myclk}
set_input_delay 2 -clock ${myclk} [remove_from_collection [all_inputs] ${myclk}]
set_output_delay 2 -clock ${myclk} [all_outputs]
set_driving_cell -library umcl18u250t2_wc -lib_cell INVD1 [remove_from_collection [all_inputs] ${myclk}]
set_load 0.1 [all_outputs]
set_max_fanout 8 [all_inputs]

compile
check_design
report_constraint -all_violators

####################################################################
# DFT / Scan insertion (2 chains)
####################################################################
set test_default_delay       0
set test_default_bidir_delay 0
set test_default_strobe      40
set test_default_period      100
set test_default_scan_style  multiplexed_flip_flop

set_scan_configuration -chain_count 2 -create_dedicated_scan_out_ports true

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

write_test_protocol -output ${outtag}.spf
change_names -rules verilog -hierarchy -verbose
write -format verilog -hierarchy -output ${outtag}_scan_netlist.v
write_sdf -version 2.1 ${outtag}_scan_netlist.sdf

report_timing -delay max
exit
