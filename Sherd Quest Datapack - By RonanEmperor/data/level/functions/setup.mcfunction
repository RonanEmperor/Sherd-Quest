# Initialise
scoreboard players set $state state 1
scoreboard players set $completed level_data 0
scoreboard players set $level_time ticks 0

# Level specific setup
function #level:level_setup

# Count number of pots
execute store result score $total_pots level_data run execute if entity @e[type=#level:level_markers, tag=pot_placement]