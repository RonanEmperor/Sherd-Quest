## Level completion
## Ran when a level is detected to be completed from level:tick

# Unlock new level
scoreboard players set $new_level_unlocked levels -1
execute unless score $current_level levels >= $levels_unlocked levels run tellraw @a ["", {"text": "["}, {"text": "✔", "color": "green", "bold": true}, {"text": "]"}, {"text": " Level Completed!", "color": "yellow"}]
execute if score $current_level levels >= $levels_unlocked levels run scoreboard players operation $levels_unlocked levels = $current_level levels
execute if score $current_level levels >= $levels_unlocked levels run scoreboard players operation $new_level_unlocked levels = $current_level levels
execute if score $current_level levels >= $levels_unlocked levels run scoreboard players add $new_level_unlocked levels 1
execute if score $current_level levels >= $levels_unlocked levels run scoreboard players add $levels_unlocked levels 1
execute unless score $new_level_unlocked levels matches -1 run tellraw @a ["", {"text": "["}, {"text": "✔", "color": "green", "bold": true}, {"text": "]"}, {"text": " Level Completed! Level ", "color": "yellow"}, {"score": {"name": "$new_level_unlocked", "objective": "levels"}, "color": "gold", "underlined": true, "bold": true}, {"text": " has been unlocked.", "color": "yellow"}]

# Feedback sound, messages and particles
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~
execute as @a at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~

execute at @e[type=#level:level_markers, tag=pot_placement] run particle happy_villager ~ ~ ~ 0.8 0.8 0.8 1 30 normal @a

title @a times 0.2s 1s 0.2s
title @a subtitle [{"text": "Level Complete!", "color": "gold", "underlined": true}]
title @a title ""


# Set game state
scoreboard players set $state state 2

# Block from editing completed levels
execute at @e[type=#level:level_markers, tag=pot_placement] run summon minecraft:interaction ~ ~ ~ {Tags: ["level_markers", "complete"], height: 1.1f}