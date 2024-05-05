execute store result storage skills.archery life short 1 run data get entity @s life
data modify storage skills.archery piercing set value 0
execute if entity @s[tag=piercing] store result storage skills.archery piercing short 1 run data get entity @s item.components."minecraft:custom_data".pierce

execute at @s[tag=damage_modified] unless entity @p[distance=..10] run data modify entity @s damage set from entity @s item.components."minecraft:custom_data".damage
execute at @s[tag=damage_modified] unless entity @p[distance=..10] run tag @s remove damage_modified
execute unless predicate skills:archery/test run return fail

execute at @s[tag=!damage_modified] as @p[distance=..10] if function skills:test as @e[type=minecraft:arrow,distance=..1] run data modify entity @s damage set value 0
execute at @s[tag=!damage_modified] as @p[distance=..10] if score @s skills.blacksmithing.deflect_chance >= pierce_cutoff skills.blacksmithing.deflect_chance as @e[type=minecraft:arrow,distance=..1] run data modify entity @s PierceLevel set value 0
execute at @s[tag=!damage_modified] if entity @p[distance=..10] run tag @s add damage_modified