execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:carrot"}}] store result score @s skills.farming.crops.carrots run data get entity @s Item.count
execute if entity @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:carrot"}},scores={skills.farming.crops.carrots=2..}] run scoreboard players add @s skills.farming.xp 1

execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:carrot"}},scores={skills.farming.crops.carrots=2..}] store result score @s skills.math run scoreboard players get @p skills.farming
execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:carrot"}},scores={skills.farming.crops.carrots=2..}] run function skills:farming/apply_skill {sub:0}