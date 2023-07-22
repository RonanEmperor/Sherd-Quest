## Checks if there's any incorrect concrete around the markers.
## Ran from level:tick.

execute if block ~2 ~-1 ~ #level:incorrect_terracotta run scoreboard players set $completed level_data 0
execute if block ~-2 ~-1 ~ #level:incorrect_terracotta run scoreboard players set $completed level_data 0
execute if block ~ ~-1 ~2 #level:incorrect_terracotta run scoreboard players set $completed level_data 0
execute if block ~ ~-1 ~-2 #level:incorrect_terracotta run scoreboard players set $completed level_data 0