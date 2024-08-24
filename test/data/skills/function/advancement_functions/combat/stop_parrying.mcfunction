scoreboard players remove @s skills.combat.parry_cooldown 1
execute unless score @s skills.combat.parry_cooldown matches 14.. anchored eyes run tag @s remove parrying
execute if score @s skills.combat.parry_cooldown matches 1.. run return run advancement revoke @s only skills:combat/stop_parrying
scoreboard players reset @s skills.combat.parry_cooldown