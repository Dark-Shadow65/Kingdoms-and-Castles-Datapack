execute store result score sword_sharpness skills.blacksmithing.skillmath run data get entity @s SelectedItem.components."minecraft:custom_data".sharpness
execute store result storage skills.blacksmithing.bonus sharpness int 1 run scoreboard players operation sword_sharpness skills.blacksmithing.skillmath -= one skills.blacksmithing.skillmath
tag @s add dull_weapon
schedule function skills:advancement_functions/blacksmithing/dull_item2 1t replace