advancement revoke @s only skills:forge_items/craft_longsword
scoreboard players add @s skills.blacksmithing.xp 5

data modify storage skills.blacksmithing.bonus type set value "minecraft:netherite_sword"
data modify storage skills.blacksmithing.bonus name set value "Longsword"
data modify storage skills.blacksmithing.bonus attack_speed_debuff set value -3

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus = @s skills.blacksmithing.sharpness_bonus
execute store result storage skills.blacksmithing.bonus sharpness_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus += floor skills.math
execute store result storage skills.blacksmithing.bonus sharpness float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus *= sword_sharpness_floor skills.math

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus = @s skills.blacksmithing.damage_bonus
execute store result storage skills.blacksmithing.bonus damage_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus += floor skills.math
execute store result storage skills.blacksmithing.bonus damage float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus *= longsword_damage_floor skills.math

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus = @s skills.blacksmithing.durability_bonus
execute store result storage skills.blacksmithing.bonus durability_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus += floor skills.math
execute store result storage skills.blacksmithing.bonus durability float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus *= iron_durability_floor skills.math

data modify storage skills.blacksmithing.bonus efficiency_bonus set value 0

function skills:advancement_functions/blacksmithing/apply_blacksmith_bonus_weapon with storage skills.blacksmithing.bonus