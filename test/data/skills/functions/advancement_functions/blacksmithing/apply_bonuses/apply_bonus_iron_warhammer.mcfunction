advancement revoke @s only skills:forge_items/craft_iron_warhammer
scoreboard players add @s skills.blacksmithing.xp 5

data modify storage skills.blacksmithing.bonus type set value "minecraft:netherite_axe"
data modify storage skills.blacksmithing.bonus name set value "Iron Warhammer"
data modify storage skills.blacksmithing.bonus efficient_on set value "\"#minecraft:mineable/axe\""
data modify storage skills.blacksmithing.bonus attack_speed_debuff set value -3.4

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus = @s skills.blacksmithing.sharpness_bonus
execute store result storage skills.blacksmithing.bonus sharpness_bonus float 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus sharpness float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus *= warhammer_sharpness_floor skills.blacksmithing.skillmath

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus = @s skills.blacksmithing.damage_bonus
execute store result storage skills.blacksmithing.bonus damage_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus damage float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus *= warhammer_damage_floor skills.blacksmithing.skillmath

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus = @s skills.blacksmithing.durability_bonus
execute store result storage skills.blacksmithing.bonus durability_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus durability float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus *= iron_durability_floor skills.blacksmithing.skillmath

execute store result storage skills.blacksmithing.bonus efficiency_bonus long 1 run scoreboard players get one skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus efficiency float 1 run scoreboard players get one skills.blacksmithing.skillmath

function skills:advancement_functions/blacksmithing/apply_blacksmith_bonus_tool with storage skills.blacksmithing.bonus