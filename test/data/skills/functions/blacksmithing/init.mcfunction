scoreboard objectives add skills.blacksmithing dummy
scoreboard objectives add skills.blacksmithing.xp dummy
scoreboard objectives add skills.blacksmithing.xpnxtlvl dummy

scoreboard objectives add skills.blacksmithing.deflect_chance dummy
scoreboard objectives add skills.blacksmithing.sharpness_bonus dummy
scoreboard objectives add skills.blacksmithing.damage_bonus dummy
scoreboard objectives add skills.blacksmithing.durability_bonus dummy
scoreboard objectives add skills.blacksmithing.efficiency_bonus dummy

scoreboard players set floor skills.math 100
scoreboard players set pierce_cutoff skills.blacksmithing.deflect_chance 50
scoreboard players set one skills.math 1
scoreboard players set axe_sharpness_floor skills.math 200
scoreboard players set sword_sharpness_floor skills.math 100
scoreboard players set iron_durability_floor skills.math 1500
scoreboard players set flint_durability_floor skills.math 100

scoreboard players set warhammer_damage_floor skills.math 5
scoreboard players set warhammer_sharpness_floor skills.math 500

scoreboard players set longsword_damage_floor skills.math 4

scoreboard players set kriegmesser_damage_floor skills.math 3

scoreboard players set messer_damage_floor skills.math 2

scoreboard players set iron_tool_efficiency_floor skills.math 4

data modify storage skills.blacksmithing damage_floor_dull set value 1

data modify storage skills.blacksmithing xpnxtlvl set value 5