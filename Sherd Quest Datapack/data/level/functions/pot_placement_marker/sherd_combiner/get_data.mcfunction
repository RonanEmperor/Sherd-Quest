## Main sherd_combiner function

scoreboard players set @s sherd_combiner 0
execute positioned ^4 ^-1 ^ as @e[type=#level:level_markers, tag=sherd_data, sort=nearest, limit=1, distance=..1] run function level:pot_placement_marker/sherd_combiner/combine_data
execute positioned ^-4 ^-1 ^ as @e[type=#level:level_markers, tag=sherd_data, sort=nearest, limit=1, distance=..1] run function level:pot_placement_marker/sherd_combiner/combine_data
execute positioned ^4 ^ ^ run particle crit ~ ~ ~ ~ ~ ~ 1 1 force @a[tag=debug]
execute positioned ^-4 ^ ^ run particle crit ~ ~ ~ ~ ~ ~ 1 1 force @a[tag=debug]

# Modify sherd data of pot to include combined sherds.
function level:pot_placement_marker/sherd_combiner/set_data