advancement revoke @s only skills:forge_items/craft_iron_pickaxe
scoreboard players add @s skills.blacksmithing.xp 5

data modify storage skills.blacksmithing.bonus type set value "minecraft:iron_pickaxe"
data modify storage skills.blacksmithing.bonus name set value "Iron Pickaxe"
data modify storage skills.blacksmithing.bonus efficient_on set value "\"#minecraft:mineable/pickaxe\""
data modify storage skills.blacksmithing.bonus attack_speed_debuff set value -3.3

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus = @s skills.blacksmithing.sharpness_bonus
execute store result storage skills.blacksmithing.bonus sharpness_bonus float 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus += floor skills.math
execute store result storage skills.blacksmithing.bonus sharpness float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.sharpness_bonus *= axe_sharpness_floor skills.math

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus = @s skills.blacksmithing.damage_bonus
execute store result storage skills.blacksmithing.bonus damage_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus += floor skills.math
execute store result storage skills.blacksmithing.bonus damage float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.damage_bonus *= kriegmesser_damage_floor skills.math

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus = @s skills.blacksmithing.durability_bonus
execute store result storage skills.blacksmithing.bonus durability_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus += floor skills.math
execute store result storage skills.blacksmithing.bonus durability float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.durability_bonus *= iron_durability_floor skills.math

scoreboard players operation apply_blacksmith_skill skills.blacksmithing.efficiency_bonus = @s skills.blacksmithing.efficiency_bonus
execute store result storage skills.blacksmithing.bonus efficiency_bonus long 1 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.efficiency_bonus += floor skills.math
execute store result storage skills.blacksmithing.bonus efficiency float 0.01 run scoreboard players operation apply_blacksmith_skill skills.blacksmithing.efficiency_bonus *= iron_tool_efficiency_floor skills.math

data modify storage skills.blacksmithing.bonus can_parry_in_offhand set value false
data modify storage skills.blacksmithing.bonus two_handed_attack_speed_bonus set value 0.5
data modify storage skills.blacksmithing.bonus reach set value 1
data modify storage skills.blacksmithing.bonus enchantments set value {"skills:sharpen_item":1,"skills:update_handedness":1}

function skills:advancement_functions/blacksmithing/apply_blacksmith_bonus_tool with storage skills.blacksmithing.bonus