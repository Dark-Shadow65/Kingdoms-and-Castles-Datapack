execute if entity @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:wheat"}}] run scoreboard players add @s skills.farming.xp 1

execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:wheat"}}] store result score @s skills.math run scoreboard players get @p skills.farming
execute as @e[type=minecraft:item,distance=..8,nbt={Age:0s,Item:{id:"minecraft:wheat"}}] run function skills:farming/apply_skill {sub:0}