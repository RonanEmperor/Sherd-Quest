title @a times 0.2s 1s 0.2s
title @a subtitle {"text": "Level 1", "color": "yellow", "underlined": true}
title @a title ""

tellraw @a [{"text": "["}, {"text": "!", "color": "gold", "bold": true}, {"text": "] "}, {"text": "How to Play", "color": "yellow", "underlined": true}, "\n\n", {"text": " Place the "}, {"text": "Decorated Pot", "color": "#a34c3c", "underlined": true}, {"text": " on a terracotta block so each face matches the face of an adjacent pot."}, {"text": "\n\n Use the "}, {"text": "Pottery Pickaxe", "color": "#c17cf7", "underlined": true}, {"text": " to destroy a pot."}, {"text": "\n\n Once all pots are placed and match, you will complete the level."}, "\n"]

summon minecraft:marker ~ ~ ~ {Tags: ["level_markers", "main"]}

# Set pot placements
summon minecraft:marker ~11 ~ ~4 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~11 ~ ~10 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~11 ~ ~16 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~5 ~ ~10 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~17 ~ ~10 {Tags: ["level_markers", "all_pot_placements"]}

# Give pots
give @a minecraft:decorated_pot{BlockEntityTag: {sherds: ["minecraft:miner_pottery_sherd", "minecraft:archer_pottery_sherd", "minecraft:blade_pottery_sherd", "minecraft:angler_pottery_sherd"]}, CanPlaceOn: ["minecraft:terracotta"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}