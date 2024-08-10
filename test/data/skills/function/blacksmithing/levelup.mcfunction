scoreboard players add @s skills.blacksmithing 1
scoreboard players reset @s skills.blacksmithing.xp
execute store result storage skills.blacksmithing nxtlvlperk int 1 run random value 1..100
execute store result storage skills.blacksmithing nxtlvlperkbonus int 1 run random value 5..15
function skills:blacksmithing/perk_apply with storage skills.blacksmithing