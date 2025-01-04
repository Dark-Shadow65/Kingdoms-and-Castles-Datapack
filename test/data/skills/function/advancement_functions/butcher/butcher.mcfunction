loot give @s loot skills:butcher_pig

execute as @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] run scoreboard players remove @s skills.butcher.uses 1
execute as @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] store result entity @s item.components."minecraft:custom_data".max_uses int 1 run scoreboard players get @s skills.butcher.uses

execute store result score @s skills.butcher.health run data get entity @s SelectedItem.components."minecraft:custom_data".sharpness_bonus
scoreboard players operation @s skills.butcher.health -= knife_damage skills.butcher.health
scoreboard players operation @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] skills.butcher.health += @s skills.butcher.health
execute as @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] store result entity @s item.components."minecraft:custom_data".health int 1 run scoreboard players get @s skills.butcher.uses

execute as @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] if score @s skills.butcher.uses matches 0 run kill @s
execute as @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] if score @s skills.butcher.health matches -400..0 run kill @s