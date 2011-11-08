
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Keyboard -dir "/home/leif/3710/Keyboard/planAhead_run_2" -part xc3s500efg320-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top KeyTest $srcset
set_param project.paUcfFile  "KeyTest.ucf"
set hdlfile [add_files [list {s3etest.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Keyboard.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {KeyTest.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "KeyTest.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-5
