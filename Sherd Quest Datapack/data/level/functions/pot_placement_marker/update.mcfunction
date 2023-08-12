## Updating function for all pot placement markers
## Ran from level:pot_placement_marker/tick when an update is detected.

# Play sound when pot is placed down
execute if score @s[scores={ticks=10..}] pot_direction matches 0.. run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 2
execute if score @s[scores={ticks=10..}] pot_direction matches -1 run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 2

# Move corresponding markers around pot based on direction
execute at @s run function level:pot_placement_marker/move_corresponding_markers

# Set NBT of decorated pot item
execute if score @s pot_direction matches -1 as @e[type=minecraft:item, nbt={Item: {id: "minecraft:decorated_pot"}}] run data merge entity @s {Item: {tag: {CanPlaceOn: ["#level:pot_placeable"], display: {Name: '{"text": "Decorated Pot", "color": "#a34c3c", "italic": false}'}}}}

# Get block type


# Update corresponding armor stands
execute as @e[type=#level:level_markers, tag=sherd_data] run scoreboard players set @s ticks 0