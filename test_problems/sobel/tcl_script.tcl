set Project     sobel
set Solution    solution1
set Device      "xcu50-fsvh2104-2-e"
set Flow        "vivado"
set Clock       10

open_project $Project -reset

set_top sobel

add_files sobel.cpp -cflags -I.
add_files sobel.h -cflags -I.
add_files -tb dst.txt -cflags -I.
add_files -tb sobel_test.cpp -cflags -I.
add_files -tb data.txt -cflags -I. 

open_solution -flow_target $Flow -reset $Solution
set_part $Device
create_clock -period $Clock

csim_design
csynth_design
cosim_design

exit