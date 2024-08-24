execute at @e[type=minecraft:marker,tag=tgt_found,tag=!registered] run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0 1 force @a

data modify storage forestry random_walk set value [{x:0,z:0},{x:0,z:0},{x:0,z:0}]

execute store result storage forestry random_walk[0].x int 1 run random value -5..5
execute store result storage forestry random_walk[0].z int 1 run random value -5..5

execute store result storage forestry random_walk[1].x int 1 run random value -5..5
execute store result storage forestry random_walk[1].z int 1 run random value -5..5

execute store result storage forestry random_walk[2].x int 1 run random value -5..5
execute store result storage forestry random_walk[2].z int 1 run random value -5..5

execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if predicate forestry:grass_growth/0.1_chance run function forestry:grass_growth/spread_grass with storage forestry random_walk[0]
execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if predicate forestry:grass_growth/0.1_chance run function forestry:grass_growth/spread_grass with storage forestry random_walk[1]
execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if predicate forestry:grass_growth/0.1_chance run function forestry:grass_growth/spread_grass with storage forestry random_walk[2]

execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ short_grass if predicate forestry:grass_growth/0.1_chance run fill ~ ~ ~ ~ ~ ~ tall_grass[half=lower]
execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if block ~ ~1 ~ air if block ~ ~-1 ~ #dirt run fill ~ ~1 ~ ~ ~1 ~ tall_grass[half=upper]
execute as @e[type=marker,tag=tgt_found,tag=!registered] run tag @s add registered