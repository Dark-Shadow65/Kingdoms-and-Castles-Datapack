advancement revoke @s only skills:sharpen_weapon
fill ~5 ~2 ~5 ~-5 ~-2 ~-5 minecraft:nether_brick_stairs[facing=north] replace minecraft:grindstone[facing=north,face=floor]
fill ~5 ~2 ~5 ~-5 ~-2 ~-5 minecraft:nether_brick_stairs[facing=east] replace minecraft:grindstone[facing=east,face=floor]
fill ~5 ~2 ~5 ~-5 ~-2 ~-5 minecraft:nether_brick_stairs[facing=south] replace minecraft:grindstone[facing=south,face=floor]
fill ~5 ~2 ~5 ~-5 ~-2 ~-5 minecraft:nether_brick_stairs[facing=west] replace minecraft:grindstone[facing=west,face=floor]

schedule function skills:advancement_functions/blacksmithing/sharp_test2 2t append

tellraw @s "Sharpend held item!"

item modify entity @s weapon.mainhand skills:sharpen
item modify entity @s weapon.mainhand skills:apply_lore
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{author:0}}}}] run item modify entity @s weapon.mainhand skills:append_author