## Main datapack load/startup.
## Runs from #minecraft:load.

# DEBUG: Reloaded message
tellraw @a[tag=debug] [{"text": "Datapack has been reloaded. ", "color": "gray", "italic": true}]

# Setup 
function #global:setup