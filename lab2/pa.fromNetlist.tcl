
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name lab2 -dir "E:/xilinx/projects/lab2/planAhead_run_2" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/xilinx/projects/lab2/task2.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/xilinx/projects/lab2} }
set_property target_constrs_file "task2_mapping.ucf" [current_fileset -constrset]
add_files [list {task2_mapping.ucf}] -fileset [get_property constrset [current_run]]
link_design
