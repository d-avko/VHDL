
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name project -dir "D:/temp/project/planAhead_run_1" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/temp/project/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/temp/project} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
