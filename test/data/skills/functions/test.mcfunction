scoreboard players reset @s skills.blacksmithing.deflect_chance
execute store result score arrow skills.blacksmithing.deflect_chance run data get storage skills.archery piercing -1
execute store result score head skills.blacksmithing.deflect_chance run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".deflection_chance 1
execute store result score chest skills.blacksmithing.deflect_chance run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".deflection_chance 1
execute store result score legs skills.blacksmithing.deflect_chance run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".deflection_chance 1
execute store result score feet skills.blacksmithing.deflect_chance run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".deflection_chance 1

scoreboard players operation @s skills.blacksmithing.deflect_chance += arrow skills.blacksmithing.deflect_chance
scoreboard players operation @s skills.blacksmithing.deflect_chance += head skills.blacksmithing.deflect_chance
scoreboard players operation @s skills.blacksmithing.deflect_chance += chest skills.blacksmithing.deflect_chance
scoreboard players operation @s skills.blacksmithing.deflect_chance += legs skills.blacksmithing.deflect_chance
scoreboard players operation @s skills.blacksmithing.deflect_chance += feet skills.blacksmithing.deflect_chance
return run execute if predicate skills:0.5_chance