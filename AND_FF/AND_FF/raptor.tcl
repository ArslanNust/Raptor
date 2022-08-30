# Created: Mon Jul 25 17:41:10 2022
create_design and4ff
target_device MPW1
add_design_file ./rtl_src/and4ff.v
add_design_file ./rtl_src/andgate4.v
set_top_module and4ff
set_device_size 4x4
add_constraint_file ./constrain/and4ff_sdc.sdc
synthesize
packing
global_placement
place
route
sta
bitstream force
