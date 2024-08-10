execute as @a if score @s skills.farming.xp >= @s skills.farming.xpnxtlvl run function skills:farming/levelup

execute as @a store result score @s skills.farming.xpnxtlvl run data get storage skills.farming xpnxtlvl
execute as @a run scoreboard players operation @s skills.farming.xpnxtlvl *= @s skills.farming

#execute as @e[type=minecraft:item,distance=..20,nbt={Item:{id:"minecraft:wheat"}}] run data modify entity @s Item.components set value {"minecraft:enchantments":{levels:{"skills:mill_wheat":1},show_in_tooltip:0b},"minecraft:enchantment_glint_override":0b,"minecraft:tool":{rules:[{blocks:"minecraft:oak_planks",correct_for_drops:false}],damage_per_block:1,default_mining_speed:0.000000000000001}}