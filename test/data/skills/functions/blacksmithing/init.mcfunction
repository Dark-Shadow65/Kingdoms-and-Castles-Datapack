scoreboard objectives add skills.blacksmithing dummy
scoreboard objectives add skills.blacksmithing.xp dummy
scoreboard objectives add skills.blacksmithing.xpnxtlvl dummy

scoreboard objectives add skills.blacksmithing.sharpness_bonus dummy
scoreboard objectives add skills.blacksmithing.damage_bonus dummy
scoreboard objectives add skills.blacksmithing.durability_bonus dummy
scoreboard objectives add skills.blacksmithing.efficiency_bonus dummy
scoreboard objectives add skills.blacksmithing.skillmath dummy

scoreboard players set floor skills.blacksmithing.skillmath 100

scoreboard players set longsword_damage_floor skills.blacksmithing.skillmath 4
scoreboard players set longsword_durability_floor skills.blacksmithing.skillmath 1500

scoreboard players set kriegmesser_damage_floor skills.blacksmithing.skillmath 3
scoreboard players set messer_damage_floor skills.blacksmithing.skillmath 2

data modify storage skills.blacksmithing xpnxtlvl set value 5