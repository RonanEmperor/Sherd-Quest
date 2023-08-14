## Get's a player's current level
## Ran from global:tick

# Store old current level
execute as @a run scoreboard players operation @s old_current_level = @s current_level

# Setup detection
scoreboard players set @a current_level 0

# Test if within area, then set the players current level
execute positioned 52 60 -9 as @a[dx=17, dy=15, dz=17] run scoreboard players set @s current_level 1
execute positioned 86 60 -15 as @a[dx=17, dy=15, dz=23] run scoreboard players set @s current_level 2
execute positioned 90 60 -44 as @a[dx=17, dy=15, dz=17] run scoreboard players set @s current_level 3
execute positioned 56 66 -93 as @a[dx=23, dy=15, dz=23] run scoreboard players set @s current_level 101


# Setup new level if detected to be in a level area
execute unless entity @a[scores={current_level=1..}] as @a[scores={current_level=0}] unless score @s current_level = @s old_current_level run function level:setup/reset
execute as @a[scores={old_current_level=0}] if score @s current_level matches 1.. unless entity @a[scores={old_current_level=1..}] if score $levels_unlocked levels = @s current_level run function level:setup
execute as @a[scores={old_current_level=0}] if score @s current_level matches 1.. unless score $state state matches 1 if score $levels_unlocked levels = @s current_level run function level:setup
execute as @a[scores={old_current_level=0}] if score @s current_level matches 1.. unless entity @a[scores={old_current_level=1..}] if score $levels_unlocked levels > @s current_level run function level:menu