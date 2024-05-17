execute as @s[scores={skills.farming.crops.wheat=1..}] at @s run function skills:farming/onbreak/wheat
execute as @s[scores={skills.farming.crops.carrots=1..}] at @s run function skills:farming/onbreak/carrots
execute as @s[scores={skills.farming.crops.beetroots=1..}] at @s run function skills:farming/onbreak/beetroots
scoreboard players reset @s skills.farming.crops.wheat
scoreboard players reset @s skills.farming.crops.carrots
scoreboard players reset @s skills.farming.crops.beetroots