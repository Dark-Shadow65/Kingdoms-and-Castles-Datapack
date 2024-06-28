execute as @a if score @s skills.woodcutting.xp >= @s skills.woodcutting.xpnxtlvl run function skills:woodcutting/levelup

execute as @a store result score @s skills.woodcutting.xpnxtlvl run data get storage skills.woodcutting xpnxtlvl
execute as @a run scoreboard players operation @s skills.woodcutting.xpnxtlvl *= @s skills.woodcutting

execute as @a if score @s skills.woodcutting.woods.oak matches 1.. run function skills:woodcutting/onbreak/oak
execute as @a if score @s skills.woodcutting.woods.spruce matches 1.. run function skills:woodcutting/onbreak/spruce
execute as @a if score @s skills.woodcutting.woods.birch matches 1.. run function skills:woodcutting/onbreak/birch
execute as @a if score @s skills.woodcutting.woods.jungle matches 1.. run function skills:woodcutting/onbreak/jungle
execute as @a if score @s skills.woodcutting.woods.acacia matches 1.. run function skills:woodcutting/onbreak/acacia
execute as @a if score @s skills.woodcutting.woods.darkoak matches 1.. run function skills:woodcutting/onbreak/darkoak
execute as @a if score @s skills.woodcutting.woods.mangrove matches 1.. run function skills:woodcutting/onbreak/mangrove
execute as @a if score @s skills.woodcutting.woods.cherry matches 1.. run function skills:woodcutting/onbreak/cherry