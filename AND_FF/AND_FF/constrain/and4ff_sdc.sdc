create_clock -period 6.8 clock0
set_input_delay 1 -clock clock0 [get_ports {*}]
set_output_delay 1 -clock clock0 [get_ports {*}]


set_pin_loc clock0 pad_fpga_io[15]
set_pin_loc in0 pad_fpga_io[0]
set_pin_loc in1 pad_fpga_io[1]
set_pin_loc in2 pad_fpga_io[2]
set_pin_loc in3 pad_fpga_io[3]
set_pin_loc out1 pad_fpga_io[4]