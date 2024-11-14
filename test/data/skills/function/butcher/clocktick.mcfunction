execute as @a if score @s skills.butcher.xp >= @s skills.butcher run function skills:butcher/levelup

execute as @a store result score @s skills.butcher.xpnxtlvl run data get storage skills.butcher xpnxtlvl
execute as @a run scoreboard players operation @s skills.butcher *= @s skills.butcher