# Zone 1: Badlands


execute positioned 37 63 0 as @a[distance=..8, advancements={level:badlands/badlands=false}] run tellraw @s [{"text": "["}, {"text": "!", "color": "gold", "bold": true}, {"text": "] "}, {"text": "How to Play", "color": "yellow", "underlined": true}, "\n\n", {"text": " Place the "}, {"text": "Decorated Pots", "color": "#a34c3c", "underlined": true}, {"text": " so each face matches the face of an adjacent pot."}, {"text": "\n\n Use the "}, {"text": "Pottery Pickaxe", "color": "#c17cf7", "underlined": true}, {"text": " to destroy a pot."}, {"text": "\n\n Once all pots are placed and match, you will complete the level.\n"}]
execute positioned 37 63 0 as @a[distance=..8, advancements={level:badlands/badlands=false}] run title @s subtitle {"text": "Zone Unlocked", "color": "yellow"}
execute positioned 37 63 0 as @a[distance=..8, advancements={level:badlands/badlands=false}] run title @s title {"text": "Badlands", "color": "gold", "bold": true}
execute positioned 37 63 0 as @a[distance=..8, advancements={level:badlands/badlands=false}] run advancement grant @s only level:badlands/badlands

# Zone 2: Cherry Grove
execute positioned 0 71 38 as @a[distance=..8, advancements={level:cherry_grove/cherry_grove=false}] run title @s subtitle {"text": "Zone Unlocked", "color": "yellow"}
execute positioned 0 71 38 as @a[distance=..8, advancements={level:cherry_grove/cherry_grove=false}] run title @s title {"text": "Cherry Grove", "color": "light_purple", "bold": true}
execute positioned 0 71 38 as @a[distance=..8, advancements={level:cherry_grove/cherry_grove=false}] run advancement grant @s only level:cherry_grove/cherry_grove