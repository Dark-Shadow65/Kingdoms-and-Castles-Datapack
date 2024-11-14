advancement revoke @s only skills:forge_items/craft_longsword
scoreboard players add @s skills.blacksmithing.xp 5

data modify storage skills.blacksmithing.bonus name set value "Longsword"
data modify storage skills.blacksmithing.bonus attack_speed_debuff set value -3.2

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
data modify storage skills.blacksmithing.bonus can_parry_in_offhand set value false

## Set this to a non zero value for two handed mechanics
data modify storage skills.blacksmithing.bonus two_handed_attack_speed_bonus set value 0.75
data modify storage skills.blacksmithing.bonus skill set value "sword"
data modify storage skills.blacksmithing.bonus reach set value 1.5
data modify storage skills.blacksmithing.bonus parry_scalar set value 1.3
data modify storage skills.blacksmithing.bonus enchantments set value {"skills:sharpen_item":1,"skills:parry":1,"skills:update_handedness":1}

function skills:advancement_functions/blacksmithing/apply_blacksmith_bonus_weapon with storage skills.blacksmithing.bonus