## Main datapack ticking.
## Runs from #minecraft:tick.

# State management
execute if score $state state matches 0 run function lobby:tick
execute if score $state state matches 1 run function level:tick

# Check if player has logged in
scoreboard players add $global ticks 1
scoreboard players add @a ticks 1
execute as @a unless score @s ticks = $global ticks at @s run function global:setup/player_join
scoreboard players operation @a ticks = $global ticks

# Zone Titles
function global:zone_titles

# Get a player's current level
function level:get_current_level