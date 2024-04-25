execute as @a if score @s skills.axes.xp >= @s skills.axes.xpnxtlvl run function skills:axes/levelup

execute as @a store result score @s skills.axes.xpnxtlvl run data get storage skills.blacksmithing xpnxtlvl
execute as @a run scoreboard players operation @s skills.axes.xpnxtlvl *= @s skills.axes