## Main setup for the scoreboard scores.
## Runs from global:load through the tag #global:setup

scoreboard players set $state state 0
scoreboard players set $global ticks 0
scoreboard players set $levels_unlocked levels 999
scoreboard players reset * current_level
scoreboard players set $current_level levels 1
scoreboard players set $new_level_unlocked levels -1