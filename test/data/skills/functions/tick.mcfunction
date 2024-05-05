function skills:woodcutting/tick
function skills:mining/tick
function skills:blacksmithing/tick
function skills:swords/tick
function skills:axes/tick
function skills:archery/tick
scoreboard players add dummy skills.clock 1
execute if score dummy skills.clock matches 120.. run function skills:clock

#execute as @e[type=minecraft:arrow,nbt={item:{components:{"minecraft:custom_data":{test:1b}}}}] run data modify entity @s Motion set value [0.1d,0d,0.1d]
#execute at @e[type=minecraft:armor_stand] as @e[type=minecraft:arrow,distance=..5] run function skills:reflect_test
#execute as @e[type=minecraft:arrow,tag=!damage_modified] at @s facing entity @e[type=player] eyes run data modify entity @s damage set value 0
#execute as @e[type=minecraft:arrow,tag=damage_modified] at @s unless entity @e[distance=..3,type=minecraft:player] run data modify entity @s damage set value 2
#execute as @e[type=minecraft:arrow,tag=damage_modified] at @s unless entity @e[distance=..3,type=minecraft:player] run tag @s remove damage_modified
#execute as @e[type=minecraft:arrow,tag=!damage_modified] at @s if entity @e[distance=..3,type=minecraft:player] if predicate skills:0.5_chance run data modify entity @s damage set value -1
#execute as @e[type=minecraft:arrow,tag=!damage_modified] at @s if entity @e[distance=..3,type=minecraft:player] run tag @s add damage_modified
execute as @e[type=arrow] run function skills:reflect_test
#execute as @e[type=minecraft:arrow,tag=!damage_modified] run tag @s add damage_modified 