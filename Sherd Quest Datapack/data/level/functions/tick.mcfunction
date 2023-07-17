scoreboard players set $completed level_data 1
scoreboard players add $level_time ticks 1

# Pot related ticking
execute as @e[type=#level:level_markers, tag=all_pot_placements] at @s run function level:pot_placement_marker/tick

# Sherd Data marker related ticking
execute as @e[type=#level:level_markers, tag=sherd_data] at @s run function level:sherd_data_markers/tick

# Check level completion
execute as @e[type=#level:level_markers, tag=all_pot_placements] at @s run function level:pot_placement_marker/check_completion
execute if score $level_time ticks matches 10.. if score $completed level_data matches 1 run function level:level_completed