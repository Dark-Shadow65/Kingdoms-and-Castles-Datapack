advancement revoke @s only skills:forge_items/craft_messer
scoreboard players add @s skills.blacksmithing.xp 3

data modify storage skills.blacksmithing.bonus type set value "minecraft:iron_sword"
data modify storage skills.blacksmithing.bonus name set value "Messer"
data modify storage skills.blacksmithing.bonus attack_speed_debuff set value -2.8

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus = @s skills.blacksmithing.sharpness_bonus
execute store result storage skills.blacksmithing.bonus sharpness_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus sharpness float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus *= sword_sharpness_floor skills.blacksmithing.skillmath

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus = @s skills.blacksmithing.damage_bonus
execute store result storage skills.blacksmithing.bonus damage_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus damage float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus *= messer_damage_floor skills.blacksmithing.skillmath

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus = @s skills.blacksmithing.durability_bonus
execute store result storage skills.blacksmithing.bonus durability_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus durability float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus *= iron_durability_floor skills.blacksmithing.skillmath

data modify storage skills.blacksmithing.bonus efficiency_bonus set value 0

function skills:advancement_functions/blacksmithing/apply_blacksmith_bonus_weapon with storage skills.blacksmithing.bonus