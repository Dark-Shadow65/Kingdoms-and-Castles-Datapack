advancement revoke @s only skills:forge_items/craft_iron_pickaxe
scoreboard players add @s skills.blacksmithing.xp 5

data modify storage skills.blacksmithing.bonus type set value "minecraft:iron_pickaxe"
data modify storage skills.blacksmithing.bonus name set value "Iron Pickaxe"
data modify storage skills.blacksmithing.bonus efficient_on set value "\"#minecraft:mineable/pickaxe\""

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus = @s skills.blacksmithing.sharpness_bonus
execute store result storage skills.blacksmithing.bonus sharpness_bonus float 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus sharpness float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus *= axe_sharpness_floor skills.blacksmithing.skillmath

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus = @s skills.blacksmithing.damage_bonus
execute store result storage skills.blacksmithing.bonus damage_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus damage float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus *= longsword_damage_floor skills.blacksmithing.skillmath

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus = @s skills.blacksmithing.durability_bonus
execute store result storage skills.blacksmithing.bonus durability_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus durability float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus *= iron_durability_floor skills.blacksmithing.skillmath

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.efficiency_bonus = @s skills.blacksmithing.efficiency_bonus
execute store result storage skills.blacksmithing.bonus efficiency_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.efficiency_bonus += floor skills.blacksmithing.skillmath
execute store result storage skills.blacksmithing.bonus efficiency float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.efficiency_bonus *= iron_axe_efficiency_floor skills.blacksmithing.skillmath

function skills:advancement_functions/blacksmithing/apply_blacksmith_bonus_tool with storage skills.blacksmithing.bonus