execute if entity @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:wheat"}}] run scoreboard players add @s skills.farming.xp 1

#execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:wheat"}}] store result score @s skills.math run scoreboard players get @p skills.farming
#execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:wheat"}}] run function skills:farming/apply_skill {sub:0}

#execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:wheat"}}] run data modify entity @s Item.components set value {"minecraft:enchantments":{levels:{"skills:mill_wheat":1},show_in_tooltip:0b},"minecraft:enchantment_glint_override":0b,"minecraft:tool":{rules:[{blocks:"minecraft:oak_planks",correct_for_drops:false}],damage_per_block:1,default_mining_speed:0.000000000000001}}