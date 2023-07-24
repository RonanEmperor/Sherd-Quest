## Function that handles players joining.
## Runs from global:tick, when a player has a different "tick" score than a global score.

team join players
tp @s 0 64 0 -90 0
tellraw @s ["[", {"text": ">", "bold": true, "color": "gold"}, "] ", {"text": "Welcome to ", "color": "yellow"}, {"text": "Sherd Quest", "color": "gold", "bold": true}]
advancement grant @s only level:root
gamemode adventure
title @s times 1s 2s 1s
title @s subtitle {"text": "A Puzzle Map", "color": "yellow"}
title @s title {"text": "Sherd Quest", "color": "gold", "bold": true}
playsound minecraft:block.decorated_pot.shatter master @s ~ ~ ~
playsound minecraft:block.decorated_pot.hit master @s ~ ~ ~
playsound minecraft:block.beacon.activate master @s ~ ~ ~