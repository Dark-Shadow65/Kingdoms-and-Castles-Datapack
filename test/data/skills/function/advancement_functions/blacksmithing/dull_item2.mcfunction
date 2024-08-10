execute as @a[tag=dull_weapon] run item modify entity @s weapon.mainhand skills:blacksmithing/dull_item
execute as @a[tag=dull_weapon] run advancement revoke @s only skills:dull_item
execute as @a[tag=dull_weapon] if items entity @s weapon.mainhand #skills:sharp_items run item modify entity @s weapon.mainhand skills:blacksmithing/update_sharpness_lore
execute as @a[tag=dull_weapon] run tag @s remove dull_weapon