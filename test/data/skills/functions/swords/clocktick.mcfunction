execute as @a if score @s skills.swords.xp >= @s skills.swords.xpnxtlvl run function skills:swords/levelup

execute as @a store result score @s skills.swords.xpnxtlvl run data get storage skills.blacksmithing xpnxtlvl
execute as @a run scoreboard players operation @s skills.swords.xpnxtlvl *= @s skills.swords