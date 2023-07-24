# Zone 1: Badlands
execute positioned 37 63 0 as @a[distance=..8, advancements={level:badlands/badlands=false}] run title @s subtitle {"text": "Zone 1", "color": "yellow"}
execute positioned 37 63 0 as @a[distance=..8, advancements={level:badlands/badlands=false}] run title @s title {"text": "Badlands", "color": "gold", "bold": true}
execute positioned 37 63 0 as @a[distance=..8, advancements={level:badlands/badlands=false}] run advancement grant @s only level:badlands/badlands


# Zone 2: Badlands
execute positioned 0 71 38 as @a[distance=..8, advancements={level:cherry_grove/cherry_grove=false}] run title @s subtitle {"text": "Zone 2", "color": "yellow"}
execute positioned 0 71 38 as @a[distance=..8, advancements={level:cherry_grove/cherry_grove=false}] run title @s title {"text": "Cherry Grove", "color": "light_purple", "bold": true}
execute positioned 0 71 38 as @a[distance=..8, advancements={level:cherry_grove/cherry_grove=false}] run advancement grant @s only level:cherry_grove/cherry_grove