data modify storage combat two_handed_attack_speed_bonus set value 0
data modify storage combat two_handed_attack_speed_bonus set from entity @s SelectedItem.components."minecraft:custom_data".two_handed_attack_speed_bonus
execute if items entity @s weapon.mainhand #skills:can_parry unless items entity @s weapon.offhand * run item modify entity @s weapon.mainhand skills:combat/set_able_to_parry
execute if items entity @s weapon.mainhand #skills:can_parry if items entity @s weapon.offhand * run item modify entity @s weapon.mainhand skills:combat/set_unable_to_parry

execute if items entity @s weapon.mainhand #skills:two_handed unless items entity @s weapon.offhand * run item modify entity @s weapon.mainhand skills:combat/set_two_handed
execute if items entity @s weapon.mainhand #skills:two_handed if items entity @s weapon.offhand * run item modify entity @s weapon.mainhand skills:combat/set_one_handed

execute if items entity @s weapon.mainhand #skills:swords store result score @s skills.combat.parry_chance run scoreboard players get @s skills.swords.parry_skill
execute if items entity @s weapon.mainhand #skills:swords store result score @s skills.combat.parry_break run scoreboard players get @s skills.swords.parry_break

execute if items entity @s weapon.mainhand #skills:can_parry unless items entity @s weapon.offhand * store result score parry_scalar skills.math run data get entity @s SelectedItem.components."minecraft:custom_data".parry_scalar 100
execute if items entity @s weapon.offhand *[minecraft:custom_data~{"can_parry_in_offhand":0}] store result score parry_scalar skills.math run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".parry_scalar

execute if items entity @s weapon.mainhand #skills:axes store result score @s skills.combat.parry_break run scoreboard players get @s skills.axes.parry_break

scoreboard players operation @s skills.combat.parry_chance *= parry_scalar skills.math
scoreboard players operation @s skills.combat.parry_chance /= floor skills.math

execute if items entity @s weapon.offhand #skills:can_parry if items entity @s weapon.offhand *[minecraft:custom_data~{"can_parry_in_offhand":0}] run item modify entity @s weapon.offhand skills:combat/set_unable_to_parry
execute if items entity @s weapon.offhand #skills:can_parry if items entity @s weapon.offhand *[minecraft:custom_data~{"can_parry_in_offhand":1}] run item modify entity @s weapon.offhand skills:combat/set_able_to_parry