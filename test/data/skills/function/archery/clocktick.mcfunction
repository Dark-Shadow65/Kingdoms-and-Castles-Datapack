execute as @a if score @s skills.archery.xp >= @s skills.archery.xpnxtlvl run function skills:archery/levelup

execute as @a store result score @s skills.archery.xpnxtlvl run data get storage skills.archery xpnxtlvl
execute as @a run scoreboard players operation @s skills.archery.xpnxtlvl *= @s skills.archery