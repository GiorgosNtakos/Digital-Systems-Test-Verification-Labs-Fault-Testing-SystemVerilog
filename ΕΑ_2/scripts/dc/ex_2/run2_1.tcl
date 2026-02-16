####################################################################
# run2_1.tcl  (s1423 synthesis ONLY - NO scan)
####################################################################
set mydesign s1423
set myclk CK

remove_design -all
analyze -f verilog ${mydesign}.v
elaborate ${mydesign}
current_design ${mydesign}
link

# Basic clocking assumptions (sequential)
create_clock -period 4 ${myclk}

# Reasonable I/O assumptions
set_input_delay  2 -clock ${myclk} [remove_from_collection [all_inputs] ${myclk}]
set_output_delay 2 -clock ${myclk} [all_outputs]
set_driving_cell -library umcl18u250t2_wc -lib_cell INVD1 [remove_from_collection [all_inputs] ${myclk}]
set_load 0.1 [all_outputs]
set_max_fanout 8 [all_inputs]

compile
check_design
report_constraint -all_violators

write -format verilog -hierarchy -output ${mydesign}_synth.v
write_sdf ${mydesign}_synth.sdf
write_sdc ${mydesign}.sdc

exit
