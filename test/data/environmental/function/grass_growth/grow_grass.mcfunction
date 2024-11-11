execute at @e[type=minecraft:marker,tag=tgt_found,tag=!registered] run particle minecraft:explosion ~ ~ ~

data modify storage environmental random_walk set value [{x:0,z:0},{x:0,z:0},{x:0,z:0}]

execute store result storage environmental random_walk[0].x int 1 run random value -3..3
execute store result storage environmental random_walk[0].z int 1 run random value -3..3

execute store result storage environmental random_walk[1].x int 1 run random value -3..3
execute store result storage environmental random_walk[1].z int 1 run random value -3..3

execute store result storage environmental random_walk[2].x int 1 run random value -3..3
execute store result storage environmental random_walk[2].z int 1 run random value -3..3

execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if predicate environmental:grass_growth/0.1_chance run function environmental:grass_growth/spread_grass with storage environmental random_walk[0]
execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if predicate environmental:grass_growth/0.1_chance run function environmental:grass_growth/spread_grass with storage environmental random_walk[1]
execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if predicate environmental:grass_growth/0.1_chance run function environmental:grass_growth/spread_grass with storage environmental random_walk[2]

execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ short_grass if predicate environmental:grass_growth/short_grass_growth run fill ~ ~ ~ ~ ~ ~ tall_grass[half=lower]
execute as @e[type=marker,tag=tgt_found,tag=!registered] at @s if block ~ ~ ~ tall_grass if block ~ ~1 ~ air if block ~ ~-1 ~ #dirt run fill ~ ~1 ~ ~ ~1 ~ tall_grass[half=upper]
execute as @e[type=marker,tag=tgt_found,tag=!registered] run tag @s add registered