scoreboard players add @s skills.axes 1
scoreboard players reset @s skills.axes.xp

execute store result storage skills.axes nxtlvlperk int 1 run random value 0..100
execute store result storage skills.axes nxtlvlperkbonus int 1 run random value 2..5
function skills:axes/perk_apply with storage skills.axes