####################################################################
# run4_1chain_fixed  (s1423 full-scan, 1 chain)
####################################################################
set mydesign s1423
set myclk CK
set outtag  s1423_1chain

remove_design -all
analyze -f verilog ${mydesign}.v
elaborate ${mydesign}
current_design ${mydesign}
link

# Basic timing (ok as template)
create_clock -period 4 ${myclk}
set_input_delay 2 -clock ${myclk} [remove_from_collection [all_inputs] ${myclk}]
set_output_delay 2 -clock ${myclk} [all_outputs]
set_driving_cell -library umcl18u250t2_wc -lib_cell INVD1 [remove_from_collection [all_inputs] ${myclk}]
set_load 0.1 [all_outputs]
set_max_fanout 8 [all_inputs]

compile
check_design
report_constraint -all_violators

# Save synthesized (non-scan) outputs (optional but useful)
write -format verilog -hierarchy -output ${outtag}_synth.v
write_sdf ${outtag}_synth.sdf
write_sdc ${outtag}.sdc

####################################################################
# DFT / Scan insertion
####################################################################
set test_default_delay       0
set test_default_bidir_delay 0
set test_default_strobe      40
set test_default_period      100
set test_default_scan_style  multiplexed_flip_flop

# 1 scan chain + dedicated scan out
set_scan_configuration -chain_count 1 -create_dedicated_scan_out_ports true

# Define DFT signals (names assumed by lab templates)
# If your environment uses different names, rename ports accordingly.
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

# Write protocol + scan netlist
write_test_protocol -output ${outtag}.spf
change_names -rules verilog -hierarchy -verbose
write -format verilog -hierarchy -output ${outtag}_scan_netlist.v
write_sdf -version 2.1 ${outtag}_scan_netlist.sdf

report_timing -delay max
exit