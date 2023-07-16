
# DEBUG: Reloaded message
scoreboard players set build debug 1
tellraw @a[tag=debug] [{"text": "Datapack has been reloaded. ", "color": "gray", "italic": true}, "(Build ", {"score": {"name": "build", "objective": "debug"}}, ")"]


# Setup 
function #global:setup