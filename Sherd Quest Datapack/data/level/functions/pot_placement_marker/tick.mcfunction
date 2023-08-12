## Ticking for pot placement marker
## Ran from level:tick

scoreboard players add @s ticks 1

# Get the direction of the pot
function level:pot_placement_marker/get_direction

# Check for update
execute unless score @s pot_direction_updated = @s pot_direction run function level:pot_placement_marker/update
scoreboard players operation @s pot_direction_updated = @s pot_direction

# Sherd combiner
#execute at @s[tag=sherd_combiner] run function level:pot_placement_marker/sherd_combiner/get_data 

# DEBUG: particles
particle end_rod ~ ~1 ~ 0 0 0 0 5 force @a[tag=debug]