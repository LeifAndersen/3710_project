
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name CPU -dir "U:/3710/3710/CPU/planAhead_run_1" -part xc3s500efg320-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "U:/3710/3710/CPU/Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {U:/3710/3710/CPU} }
set_param project.paUcfFile  "Top.ucf"
add_files "Top.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
read_xdl -file "U:/3710/3710/CPU/Top.ncd"
if {[catch {read_twx -name results_1 -file "U:/3710/3710/CPU/Top.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"U:/3710/3710/CPU/Top.twx\": $eInfo"
}
