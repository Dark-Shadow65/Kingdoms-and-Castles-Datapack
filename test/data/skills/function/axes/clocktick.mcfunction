execute as @a if score @s skills.axes.xp >= @s skills.axes.xpnxtlvl run function skills:axes/levelup

execute as @a store result score @s skills.axes.xpnxtlvl run data get storage skills.blacksmithing xpnxtlvl
execute as @a run scoreboard players operation @s skills.axes.xpnxtlvl *= @s skills.axes

execute as @a unless score @s skills.axes.parry_break matches 100.. run scoreboard players set @s skills.axes.parry_break 100