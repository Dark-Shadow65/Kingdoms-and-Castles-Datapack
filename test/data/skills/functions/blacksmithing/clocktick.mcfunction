execute as @a if score @s skills.blacksmithing.xp >= @s skills.blacksmithing.xpnxtlvl run function skills:blacksmithing/levelup

execute as @a store result score @s skills.blacksmithing.xpnxtlvl run data get storage skills.blacksmithing xpnxtlvl
execute as @a run scoreboard players operation @s skills.blacksmithing.xpnxtlvl *= @s skills.blacksmithing