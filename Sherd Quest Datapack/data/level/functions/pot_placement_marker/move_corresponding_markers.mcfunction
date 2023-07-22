## Moves the corresponding markers around the pot placement markers
## Ran from level:pot_placement_markers/update.

tp @e[type=#level:level_markers, tag=sherd_data, sort=nearest, limit=1, tag=south] ^ ^-3 ^2
tp @e[type=#level:level_markers, tag=sherd_data, sort=nearest, limit=1, tag=north] ^ ^-3 ^-2
tp @e[type=#level:level_markers, tag=sherd_data, sort=nearest, limit=1, tag=east] ^2 ^-3 ^
tp @e[type=#level:level_markers, tag=sherd_data, sort=nearest, limit=1, tag=west] ^-2 ^-3 ^