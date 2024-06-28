execute as @a[tag=dull_weapon] run item modify entity @s weapon.mainhand skills:blacksmithing/dull_item
execute as @a[tag=dull_weapon] run advancement revoke @s only skills:dull_item
execute as @a[tag=dull_weapon] run tag @s remove dull_weapon