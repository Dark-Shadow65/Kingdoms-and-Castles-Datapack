execute unless score @s skills.combat.parry_cooldown matches 1.. anchored eyes run playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 1 2
execute if score @s skills.combat.parry_cooldown matches 15 anchored eyes run tag @s add parrying
advancement revoke @s only skills:combat/parrying
advancement revoke @s only skills:combat/stop_parrying
execute if score @s skills.combat.parry_cooldown matches 14..15 unless score @s skills.combat.parry_timeout matches -2.. run scoreboard players set @s skills.combat.parry_timeout 10
scoreboard players set @s skills.combat.parry_cooldown 15