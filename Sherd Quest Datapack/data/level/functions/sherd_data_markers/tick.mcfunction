# Tick
scoreboard players add @s ticks 1

# Make corresponding markers face pot placement markers
execute positioned ~ ~3 ~ facing entity @e[type=#level:level_markers, tag=all_pot_placements, sort=nearest, limit=1] feet run tp ~ ~-3 ~

# Copy sherd data to pot placement's corresponding markers
execute positioned ~ ~3 ~ at @e[type=#level:level_markers, tag=all_pot_placements, sort=nearest, limit=1, distance=..3.5] run function level:sherd_data_markers/get_sherd_data

# Check corresponding markers to see if they are matching
scoreboard players set @s completion_check -1
execute if score @s sherd_id matches 0.. positioned ^ ^ ^-2 run function level:sherd_data_markers/check_if_matching
execute if block ^ ^3 ^2 minecraft:air run scoreboard players set @s completion_check -1
execute if score @s sherd_id matches ..0 run scoreboard players set @s completion_check -1

# Change concrete
execute if score @s[scores={ticks=2..}] completion_check matches 0 positioned ^ ^2 ^-2 run function level:is_incorrect
execute if score @s[scores={ticks=2..}] completion_check matches 1 positioned ^ ^2 ^-2 run function level:is_correct
execute if score @s[scores={ticks=2..}] completion_check matches -1 positioned ^ ^2 ^-2 run function level:not_placed

# Kill additional unused markers
execute if entity @s[tag=fixed, scores={sherd_id=0, ticks=20..}] run kill @s