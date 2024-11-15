execute as @e[type=marker,tag=scan] run scoreboard players add @s environmental.scan_count 1

execute as @e[type=marker,tag=scan] at @s positioned ~1 ~ ~ if entity @e[distance=..6,tag=scan_center] unless entity @e[type=marker,sort=nearest,distance=..0.1] run summon marker ~ ~ ~ {Tags:[scan]}
execute as @e[type=marker,tag=scan] at @s positioned ~-1 ~ ~ if entity @e[distance=..6,tag=scan_center] unless entity @e[type=marker,sort=nearest,distance=..0.1] run summon marker ~ ~ ~ {Tags:[scan]}
execute as @e[type=marker,tag=scan] at @s positioned ~ ~ ~1 if entity @e[distance=..6,tag=scan_center] unless entity @e[type=marker,sort=nearest,distance=..0.1] run summon marker ~ ~ ~ {Tags:[scan]}
execute as @e[type=marker,tag=scan] at @s positioned ~ ~ ~-1 if entity @e[distance=..6,tag=scan_center] unless entity @e[type=marker,sort=nearest,distance=..0.1] run summon marker ~ ~ ~ {Tags:[scan]}
execute as @e[type=marker,tag=scan] at @s if block ~ ~ ~ short_grass run tag @s add tgt_found
execute as @e[type=marker,tag=scan] at @s if block ~ ~ ~ tall_grass run tag @s add tgt_found

execute as @e[type=marker,tag=tgt_found,tag=!registered] run function environmental:grass_growth/grow_grass

execute as @e[type=marker,tag=scan,sort=furthest] at @s unless score @s environmental.scan_count matches 1.. if entity @e[distance=..15,tag=scan_center,type=marker,sort=nearest,limit=1] run return run schedule function environmental:grass_growth/scan 4t replace


execute as @e[type=marker,tag=scan] run kill @s
#execute as @e[type=marker,tag=scan] at @s if score @s environmental.scan_count matches 1.. run kill @s