tellraw @s "Sharpend held item!"

item modify entity @s weapon.mainhand skills:blacksmithing/sharpen
item modify entity @s weapon.mainhand skills:blacksmithing/apply_lore
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{author:0}}}}] run item modify entity @s weapon.mainhand skills:blacksmithing/append_author