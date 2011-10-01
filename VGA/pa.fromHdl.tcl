
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name VGA -dir "C:/Users/jhparker/Desktop/Scrap/VGA/planAhead_run_2" -part xc3s500efg320-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top VGA_Controller $srcset
set_param project.paUcfFile  "VGA_Controller.ucf"
set hdlfile [add_files [list {VGA_Controller.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
add_files "VGA_Controller.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-5
