execute unless score @s skills.combat.parry_cooldown matches 1.. anchored eyes run playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 1 2
execute unless score @s skills.combat.parry_cooldown matches 1.. anchored eyes run tag @s add parrying
advancement revoke @s only skills:combat/parrying
advancement revoke @s only skills:combat/stop_parrying
scoreboard players set @s skills.combat.parry_cooldown 5