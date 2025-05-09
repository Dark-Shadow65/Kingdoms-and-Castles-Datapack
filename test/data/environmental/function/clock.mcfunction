execute as @e[limit=10,sort=random,type=sheep] at @s if predicate environmental:grass_growth/0.01_chance if predicate environmental:grass_growth/check_if_grass_can_grow run summon marker ~ ~ ~ {Tags:[scan_center,scan]}
#environmental:can_grow_grass
execute as @e[type=marker,tag=scan_center] run schedule function environmental:grass_growth/scan 50t