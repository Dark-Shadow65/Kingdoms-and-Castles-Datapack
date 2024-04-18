#requires {efficiency:<>, }
#$data modify storage skills.apply_bonus efficiency set value $(efficiency)
$scoreboard players set efficiency_bonus skills.apply_bonus $(efficiency_bonus)
scoreboard players operation efficiency skills.apply_bonus = @s skills.woodcutting
scoreboard players operation efficiency skills.apply_bonus /= efficiency skills.skill_divisor
execute store result storage minecraft:skills.apply_bonus efficiency float 1 run scoreboard players operation efficiency skills.apply_bonus += efficiency_bonus skills.apply_bonus
#$data modify storage skills.apply_bonus durability set value $(durability)
item modify entity @s weapon.mainhand skills:add_effects