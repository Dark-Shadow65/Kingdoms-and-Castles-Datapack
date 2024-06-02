execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shears"}]}] run give @s glowstone_dust[minecraft:item_name="Flour"]
execute unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shears"}]}] run item modify entity @s weapon.mainhand skills:farming/remove_count

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shears"}]}] run give @s prismarine_crystals[minecraft:item_name="Oats"]
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shears"}]}] run item modify entity @s weapon.mainhand skills:farming/remove_count

particle dust{color:[0.914,0.7,0.122],scale:1} ~ ~ ~ 0.3 0 0.3 1 10 normal