## Main setup for all pot placement markers
## Ran from level:setup/main

# Add tags
execute if block ~ ~-1 ~ #level:pot_placeable run tag @s add pot_placement
execute unless block ~ ~-1 ~ #level:pot_placeable run tag @s add fixed

execute if block ~ ~ ~ minecraft:decorated_pot{sherds: ["minecraft:brick", "minecraft:snort_pottery_sherd", "minecraft:snort_pottery_sherd", "minecraft:brick"]} run tag @s add sherd_combiner

# Reset existing 
execute if entity @s[tag=pot_placement] run setblock ~ ~ ~ minecraft:air

# Setup corresponding markers
function level:pot_placement_marker/corresponding_markers