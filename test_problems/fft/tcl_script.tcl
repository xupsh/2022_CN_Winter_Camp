set Project     fft
set Solution    solution1
set Device      "xcu50-fsvh2104-2-e"
set Flow        "vivado"
set Clock       10

open_project $Project -reset

set_top fft

add_files fft.cpp -cflags -I.
add_files fft.h -cflags -I. 
add_files -tb out.gold.dat -cflags -I.
add_files -tb fft_test.cpp -cflags -I.

open_solution -flow_target $Flow -reset $Solution
set_part $Device
create_clock -period $Clock

csim_design
csynth_design
cosim_design

exit