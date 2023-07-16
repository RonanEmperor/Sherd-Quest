title @a subtitle [{"text": "Level ", "color": "gold", "underlined": true}, {"score": {"name": "$levels_unlocked", "objective": "levels"}}]

# Give pickaxe
clear @a
give @a minecraft:wooden_pickaxe{Unbreakable: 1b, CanDestroy: ["minecraft:decorated_pot"], Enchantments: [{id: "minecraft:silk_touch", lvl: 1}], display: {Name: '{"text": "Pottery Pickaxe", "color": "#c17cf7", "italic": false}', Lore: ['{"text": "Silk Touch", "color": "gray", "italic": false}']}, HideFlags: 39}

# Level specific setup
execute if score $current_level levels matches 1 positioned 50 64 -10 rotated 180 0 run function level:levels/all/1

# Additional resetting
execute as @e[type=#level:level_markers, tag=dynamic, tag=pot_placement] run fill ~-5 ~-1 ~5 ~5 ~-1 ~5 minecraft:cyan_terracotta replace #level:all_terracotta

execute as @e[type=#level:level_markers, tag=all_pot_placements] at @s anchored feet run function level:pot_placement_marker/setup
execute as @e[type=#level:level_markers, tag=fixed] at @s run summon minecraft:interaction ~ ~ ~ {Tags: ["prevent_breaking", "level_markers"], height: 1.1f} 

scoreboard players set $completed level_data 0