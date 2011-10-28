
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name CPU -dir "C:/Users/Daniel/3710/CPU/planAhead_run_1" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Daniel/3710/CPU/Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Daniel/3710/CPU} }
set_param project.paUcfFile  "s3e.ucf"
add_files "s3e.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
