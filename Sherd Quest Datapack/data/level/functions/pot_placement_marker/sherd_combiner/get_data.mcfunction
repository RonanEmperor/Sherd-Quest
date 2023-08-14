## Main sherd_combiner function

scoreboard players set @s sherd_combiner 0
execute positioned ^ ^ ^-2 as @e[type=level_marker, tag=sherd_data, sort=nearest, limit=1, distance=..1] run function level:pot_placement_marker/sherd_combiner/combine_data
execute positioned ^ ^ ^6 as @e[type=level_marker, tag=sherd_data, sort=nearest, limit=1, distance=..1] run function level:pot_placement_marker/sherd_combiner/combine_data


# Modify sherd data of pot to include combined sherds.
function set_data