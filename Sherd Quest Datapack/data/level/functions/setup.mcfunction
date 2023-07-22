## Initial setup for the levels.

# Initialise
scoreboard players set $state state 1
scoreboard players set $completed level_data 0
scoreboard players set $level_time ticks 0

# Level specific setup
function #level:level_setup