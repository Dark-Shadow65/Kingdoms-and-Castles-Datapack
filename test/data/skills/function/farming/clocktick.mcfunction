execute as @a if score @s skills.farming.xp >= @s skills.farming.xpnxtlvl run function skills:farming/levelup

execute as @a store result score @s skills.farming.xpnxtlvl run data get storage skills.farming xpnxtlvl
execute as @a run scoreboard players operation @s skills.farming.xpnxtlvl *= @s skills.farming