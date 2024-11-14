scoreboard players remove @s skills.combat.parry_cooldown 1
execute if score @s skills.combat.parry_timeout matches 1..10 run scoreboard players remove @s skills.combat.parry_timeout 1
execute unless score @s skills.combat.parry_cooldown matches 14.. run scoreboard players reset @s skills.combat.parry_timeout
execute unless score @s skills.combat.parry_cooldown matches 14.. anchored eyes run tag @s remove parrying
#execute if score @s skills.combat.parry_cooldown matches 0..14 run item modify entity @s weapon.mainhand skills:combat/set_unable_to_parry
execute if score @s skills.combat.parry_cooldown matches 1.. run return run advancement revoke @s only skills:combat/stop_parrying
scoreboard players reset @s skills.combat.parry_cooldown
