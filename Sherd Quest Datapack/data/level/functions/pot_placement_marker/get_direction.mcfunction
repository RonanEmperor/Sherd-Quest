execute unless block ~ ~ ~ minecraft:decorated_pot run scoreboard players set @s pot_direction -1

# Check direction of decorated pot
execute if block ~ ~ ~ minecraft:decorated_pot[facing=north] run data merge entity @s {Rotation: [0.0f, 0.0f]}
execute if block ~ ~ ~ minecraft:decorated_pot[facing=east] run data merge entity @s {Rotation: [90.0f, 0.0f]}
execute if block ~ ~ ~ minecraft:decorated_pot[facing=south] run data merge entity @s {Rotation: [-180.0f, 0.0f]}
execute if block ~ ~ ~ minecraft:decorated_pot[facing=west] run data merge entity @s {Rotation: [-90.0f, 0.0f]}

execute if block ~ ~ ~ minecraft:decorated_pot[facing=north] run scoreboard players set @s pot_direction 0
execute if block ~ ~ ~ minecraft:decorated_pot[facing=east] run scoreboard players set @s pot_direction 1
execute if block ~ ~ ~ minecraft:decorated_pot[facing=south] run scoreboard players set @s pot_direction 2
execute if block ~ ~ ~ minecraft:decorated_pot[facing=west] run scoreboard players set @s pot_direction 3

# North = 180.0f
# East = -90.0f
# South = 0.0f
# West = 90.0f