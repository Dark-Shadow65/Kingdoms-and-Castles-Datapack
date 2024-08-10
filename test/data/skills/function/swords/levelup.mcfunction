scoreboard players add @s skills.swords 1
scoreboard players reset @s skills.swords.xp

execute store result storage skills.swords nxtlvlperk int 1 run random value 0..100
execute store result storage skills.swords nxtlvlperkbonus int 1 run random value 2..5
function skills:swords/perk_apply with storage skills.swords