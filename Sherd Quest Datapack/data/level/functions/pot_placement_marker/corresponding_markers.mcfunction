execute positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {Tags: ["level_markers", "sherd_data", "south"], ArmorItems: [{id: "minecraft:stone", Count: 1b}, {}, {}, {}], Invisible: true}
execute positioned ^ ^ ^-1 run summon minecraft:armor_stand ~ ~ ~ {Tags: ["level_markers", "sherd_data", "north"], ArmorItems: [{id: "minecraft:stone", Count: 1b}, {}, {}, {}], Invisible: true}
execute positioned ^1 ^ ^ run summon minecraft:armor_stand ~ ~ ~ {Tags: ["level_markers", "sherd_data", "east"], ArmorItems: [{id: "minecraft:stone", Count: 1b}, {}, {}, {}], Invisible: true}
execute positioned ^-1 ^ ^ run summon minecraft:armor_stand ~ ~ ~ {Tags: ["level_markers", "sherd_data", "west"], ArmorItems: [{id: "minecraft:stone", Count: 1b}, {}, {}, {}], Invisible: true}

execute as @e[type=#level:level_markers, tag=sherd_data] at @s if entity @e[type=#level:level_markers, tag=pot_placement, sort=nearest, limit=1, distance=..2] run tag @s add dynamic
execute as @e[type=#level:level_markers, tag=sherd_data, tag=!dynamic] run tag @s add fixed