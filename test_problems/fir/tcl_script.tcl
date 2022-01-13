open_project fir
set_top fir
add_files fir.cpp
add_files -tb out.gold.dat -cflags "-I."
add_files -tb input.dat -cflags "-I."
add_files -tb fir_test.cpp -cflags "-I."
open_solution -flow_target vivado -reset solution1
set_part {xcu50-fsvh2104-2-e}
create_clock -period 10 -name default
csim_design
csynth_design
cosim_design

exit