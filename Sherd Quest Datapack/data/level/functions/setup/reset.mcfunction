## Resetting for the level
## Ran from level:setup through the tag #level:level_setup

clear @a
kill @e[type=#level:level_markers, tag=level_markers]
scoreboard players set $completed level_data 0
scoreboard players set $state state 0