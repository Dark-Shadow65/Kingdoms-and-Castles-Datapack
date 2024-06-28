execute as @a if score @s skills.culinary.xp >= @s skills.culinary.xpnxtlvl run function skills:culinary/levelup

execute as @a store result score @s skills.culinary.xpnxtlvl run data get storage skills.culinary xpnxtlvl
execute as @a run scoreboard players operation @s skills.culinary.xpnxtlvl *= @s skills.culinary