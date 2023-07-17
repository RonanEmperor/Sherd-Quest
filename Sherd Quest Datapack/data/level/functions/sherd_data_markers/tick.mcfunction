# Tick
scoreboard players add @s ticks 1

# Make corresponding markers face pot placement markers
execute positioned ~ ~3 ~ facing entity @e[type=#level:level_markers, tag=all_pot_placements, sort=nearest, limit=1] feet run tp ~ ~-3 ~

# Copy sherd data to pot placement's corresponding markers
execute positioned ~ ~3 ~ at @e[type=#level:level_markers, tag=all_pot_placements, sort=nearest, limit=1, distance=..3.5] run function level:sherd_data_markers/get_sherd_data

# Check corresponding markers to see if they are matching
execute positioned ^ ^ ^-2 if entity @s if score @s sherd_id = @e[type=#level:level_markers, tag=sherd_data, limit=1, sort=nearest, distance=..2] sherd_id run scoreboard players set @s completion_check 1
execute positioned ^ ^ ^-2 if entity @s unless score @s sherd_id = @e[type=#level:level_markers, tag=sherd_data, limit=1, sort=nearest, distance=..2] sherd_id run scoreboard players set @s completion_check 0

# Change concrete
execute if score @s[scores={ticks=2..}] completion_check matches 0 positioned ^ ^2 ^-2 run function level:is_incorrect
execute if score @s[scores={ticks=2..}] completion_check matches 1 positioned ^ ^2 ^-2 run function level:is_correct
execute as @e[type=#level:level_markers, tag=pot_placement] at @s if block ~ ~ ~ minecraft:air run fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 minecraft:cyan_terracotta replace #level:all_terracotta

# Kill additional unused markers
execute if entity @s[tag=fixed, scores={sherd_id=0, ticks=20..}] run kill @s