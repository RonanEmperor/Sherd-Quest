## Main level setup
## Ran from level:setup, through the tag #level:level_setup

scoreboard players set $state state 1
execute as @a at @s run playsound minecraft:block.decorated_pot.shatter master @s ~ ~ ~ 

# Give pickaxe
clear @a
give @a minecraft:wooden_pickaxe{Unbreakable: 1b, CanDestroy: ["minecraft:decorated_pot"], Enchantments: [{id: "minecraft:silk_touch", lvl: 1}], display: {Name: '{"text": "Pottery Pickaxe", "color": "#c17cf7", "italic": false}', Lore: ['{"text": "Silk Touch", "color": "gray", "italic": false}']}, HideFlags: 39}

# Level specific setup
execute if score $current_level levels matches 1 positioned 52 64 -9 rotated 180 0 run function level:setup/list/1
execute if score $current_level levels matches 2 positioned 86 64 -15 rotated 180 0 run function level:setup/list/2
execute if score $current_level levels matches 3 positioned 90 64 -44 rotated 180 0 run function level:setup/list/3

execute if score $current_level levels matches 101 positioned 59 67 -72 rotated 180 0 run function level:setup/list/101


# Additional resetting
execute as @e[type=#level:level_markers, tag=dynamic, tag=pot_placement] run fill ~-5 ~-1 ~5 ~5 ~-1 ~5 minecraft:cyan_terracotta replace #level:all_terracotta

execute as @e[type=#level:level_markers, tag=all_pot_placements] at @s anchored feet run function level:pot_placement_marker/setup
execute as @e[type=#level:level_markers, tag=all_pot_placements, tag=fixed] at @s run summon minecraft:interaction ~ ~ ~ {Tags: ["prevent_breaking", "level_markers"], height: 1.1f} 

scoreboard players set $completed level_data 0