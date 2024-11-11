tellraw @s "sharpened held item!"

execute store result storage skills.blacksmithing sharpness_to_int int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".sharpness_max

item modify entity @s weapon.mainhand skills:blacksmithing/sharpen

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{author:0}}}}] run item modify entity @s weapon.mainhand skills:blacksmithing/apply_lore
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{author:0b}}}}] run item modify entity @s weapon.mainhand skills:blacksmithing/append_author
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{author:0}}}}] run item modify entity @s weapon.mainhand skills:blacksmithing/append_author