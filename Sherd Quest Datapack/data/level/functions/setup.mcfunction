## Initial setup for the levels.

# Initialise
scoreboard players operation $current_level levels = @s current_level

scoreboard players set $completed level_data 0
scoreboard players set $level_time ticks 0

# Level specific setup
function #level:level_setup