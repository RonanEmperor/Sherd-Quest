## Ticking for pot placement marker
## Ran from level:tick

scoreboard players add @s ticks 1

# Get the direction of the pot
function level:pot_placement_marker/get_direction

# Check for update
execute unless score @s pot_direction_updated = @s pot_direction run function level:pot_placement_marker/update
scoreboard players operation @s pot_direction_updated = @s pot_direction
