execute as @a if score @s skills.fishing.xp >= @s skills.fishing.xpnxtlvl run function skills:fishing/levelup

execute as @a store result score @s skills.fishing.xpnxtlvl run data get storage skills.fishing xpnxtlvl
execute as @a run scoreboard players operation @s skills.fishing.xpnxtlvl *= @s skills.fishing

execute as @a unless score @s skills.fishing matches 1.. run scoreboard players set @s skills.fishing 1