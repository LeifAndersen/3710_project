
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name VGA -dir "C:/Users/jhparker/Desktop/Scrap/VGA/planAhead_run_1" -part xc3s500efg320-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/jhparker/Desktop/Scrap/VGA/VGA_Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/jhparker/Desktop/Scrap/VGA} }
set_param project.paUcfFile  "VGA_Controller.ucf"
add_files "VGA_Controller.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
