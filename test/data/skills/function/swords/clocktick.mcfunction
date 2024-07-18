execute as @a if score @s skills.swords.xp >= @s skills.swords.xpnxtlvl run function skills:swords/levelup

execute as @a store result score @s skills.swords.xpnxtlvl run data get storage skills.blacksmithing xpnxtlvl
execute as @a run scoreboard players operation @s skills.swords.xpnxtlvl *= @s skills.swords

execute as @a unless score @s skills.swords.parry_skill matches 50.. run scoreboard players set @s skills.swords.parry_skill 50
execute as @a unless score @s skills.swords.parry_break matches 100.. run scoreboard players set @s skills.swords.parry_break 100