execute align xyz positioned ~ ~ ~ run tp @s ~ ~ ~
tellraw @s ["X: ", {"nbt": "Pos[0]", "entity": "@s"}, ", Y: ", {"nbt": "Pos[1]", "entity": "@s"}, ", Z: ", {"nbt": "Pos[2]", "entity": "@s"}]