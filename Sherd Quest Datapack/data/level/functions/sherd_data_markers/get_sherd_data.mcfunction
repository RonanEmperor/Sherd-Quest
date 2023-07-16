# Copy Sherd from Pot to ArmorItems
execute if entity @s[tag=north] run data modify entity @s ArmorItems[0].id set from block ~ ~ ~ sherds[0]
execute if entity @s[tag=west] run data modify entity @s ArmorItems[0].id set from block ~ ~ ~ sherds[1]
execute if entity @s[tag=east] run data modify entity @s ArmorItems[0].id set from block ~ ~ ~ sherds[2]
execute if entity @s[tag=south] run data modify entity @s ArmorItems[0].id set from block ~ ~ ~ sherds[3]

# Get Sherd ID
function level:sherd_data_markers/get_sherd_id

# Set Sherd ID to -1 if no pot is found
execute if block ~ ~ ~ minecraft:air run scoreboard players set @s sherd_id -1