title @a times 0.2s 1s 0.2s
title @a subtitle {"text": "Level 101", "color": "yellow", "underlined": true}
title @a title ""

summon minecraft:marker ~ ~ ~ {Tags: ["level_markers", "main"]}

# Set pot placements
summon minecraft:marker ~ ~ ~ {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~ ~ ~-6 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~ ~ ~-12 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~ ~ ~-18 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~6 ~ ~ {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~6 ~ ~-6 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~6 ~ ~-12 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~12 ~ ~ {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~12 ~ ~-6 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~12 ~ ~-12 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~18 ~ ~ {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~18 ~ ~-6 {Tags: ["level_markers", "all_pot_placements"]}


# Give pots
#4
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:blade_pottery_sherd", "minecraft:arms_up_pottery_sherd", "minecraft:arms_up_pottery_sherd", "minecraft:archer_pottery_sherd"]}, CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}
#6
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:brick", "minecraft:angler_pottery_sherd", "minecraft:blade_pottery_sherd", "minecraft:arms_up_pottery_sherd"]}, CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}
#2
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:brick", "minecraft:archer_pottery_sherd", "minecraft:blade_pottery_sherd", "minecraft:arms_up_pottery_sherd"]}, CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}
#7
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:brick", "minecraft:arms_up_pottery_sherd", "minecraft:brick", "minecraft:angler_pottery_sherd"]}, CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}
#3
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:archer_pottery_sherd", "minecraft:arms_up_pottery_sherd", "minecraft:angler_pottery_sherd", "minecraft:blade_pottery_sherd"]}, CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}
#1
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:brick", "minecraft:angler_pottery_sherd", "minecraft:arms_up_pottery_sherd", "minecraft:archer_pottery_sherd"]}, CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}
#5
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:brick", "minecraft:archer_pottery_sherd", "minecraft:brick", "minecraft:arms_up_pottery_sherd"]}, CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}