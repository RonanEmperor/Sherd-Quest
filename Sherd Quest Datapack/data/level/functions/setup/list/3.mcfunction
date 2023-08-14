title @a times 0.2s 1s 0.2s
title @a subtitle {"text": "Level 3", "color": "yellow", "underlined": true}
title @a title ""

summon minecraft:marker ~ ~ ~ {Tags: ["level_markers", "main"]}

# Set pot placements
summon minecraft:marker ~3 ~ ~9 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~3 ~ ~15 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~9 ~ ~3 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~9 ~ ~9 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~9 ~ ~15 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~15 ~ ~3 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~15 ~ ~9 {Tags: ["level_markers", "all_pot_placements"]}
summon minecraft:marker ~15 ~ ~15 {Tags: ["level_markers", "all_pot_placements"]}