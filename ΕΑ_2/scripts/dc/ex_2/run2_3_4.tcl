# run2_3.tcl  (c7552 combinational synthesis)
set mydesign c7552
remove_design -all

analyze -f verilog ${mydesign}.v
elaborate ${mydesign}
current_design ${mydesign}
link

set_driving_cell -library umcl18u250t2_wc -lib_cell INVD1 [all_inputs]
set_load 0.1 [all_outputs]
set_max_fanout 8 [all_inputs]

compile
check_design

write -format verilog -hierarchy -output ${mydesign}_synth.v
write_sdf ${mydesign}_synth.sdf
write_sdc ${mydesign}.sdc

exit
