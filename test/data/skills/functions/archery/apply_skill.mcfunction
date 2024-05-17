summon marker ^ ^ ^1 {Tags:["direction"]}

# get skill multipliers from the bow and player
execute store result score accuracy skills.math run data get entity @s SelectedItem.components."minecraft:custom_data".accuracy 10
execute store result score velocity skills.math run data get entity @s SelectedItem.components."minecraft:custom_data".weight 1

execute store result score accuracy_scalar skills.math run data get entity @s SelectedItem.components."minecraft:custom_data".accuracy_scalar 1
scoreboard players operation player_accuracy skills.math = @s skills.archery
scoreboard players operation player_accuracy skills.math *= accuracy_scalar skills.math
scoreboard players operation accuracy skills.math += player_accuracy skills.math

# create accuracy vector
execute store result score accuracyVecX skills.math run random value -100000..100000
execute store result score accuracyVecY skills.math run random value -100000..100000
execute store result score accuracyVecZ skills.math run random value -100000..100000
scoreboard players operation accuracyVecX skills.math /= accuracy skills.math
scoreboard players operation accuracyVecY skills.math /= accuracy skills.math
scoreboard players operation accuracyVecZ skills.math /= accuracy skills.math


# get the coordinates of the player and the entity
execute store result score #playerX skills.archery.pos run data get entity @s Pos[0] 1000
execute store result score #playerY skills.archery.pos run data get entity @s Pos[1] 1000
execute store result score #playerZ skills.archery.pos run data get entity @s Pos[2] 1000
execute store result score #targetX skills.archery.pos as @e[type=marker,tag=direction,limit=1,sort=nearest] run data get entity @s Pos[0] 1000
execute store result score #targetY skills.archery.pos as @e[type=marker,tag=direction,limit=1,sort=nearest] run data get entity @s Pos[1] 1000
execute store result score #targetZ skills.archery.pos as @e[type=marker,tag=direction,limit=1,sort=nearest] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX skills.archery.pos -= #playerX skills.archery.pos
scoreboard players operation #targetY skills.archery.pos -= #playerY skills.archery.pos
scoreboard players operation #targetZ skills.archery.pos -= #playerZ skills.archery.pos
scoreboard players operation #targetX skills.archery.pos *= velocity skills.math
scoreboard players operation #targetY skills.archery.pos *= velocity skills.math
scoreboard players operation #targetZ skills.archery.pos *= velocity skills.math
execute store result storage skills.archery vecOutX long 1 run scoreboard players operation #targetX skills.archery.pos += accuracyVecX skills.math
execute store result storage skills.archery vecOutY long 1 run scoreboard players operation #targetY skills.archery.pos += accuracyVecY skills.math
execute store result storage skills.archery vecOutZ long 1 run scoreboard players operation #targetZ skills.archery.pos += accuracyVecZ skills.math

execute store result entity @e[type=arrow,tag=!skill_applied,limit=1,sort=nearest] Motion[0] double 0.001 run data get storage skills.archery vecOutX 1
execute store result entity @e[type=arrow,tag=!skill_applied,limit=1,sort=nearest] Motion[1] double 0.001 run data get storage skills.archery vecOutY 1
execute store result entity @e[type=arrow,tag=!skill_applied,limit=1,sort=nearest] Motion[2] double 0.001 run data get storage skills.archery vecOutZ 1

execute as @e[type=arrow,tag=!skill_applied,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_model_data":5}}}] run data modify entity @s Fire set value 500
execute as @s if predicate skills:archery/holding_longbow as @e[type=arrow,tag=!skill_applied,limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_model_data":2}}}] run data modify entity @s PierceLevel set value 3
execute if predicate skills:archery/holding_longbow run tag @e[type=arrow,tag=!skill_applied,limit=1,sort=nearest] add piercing
tag @e[type=arrow,tag=!skill_applied,limit=1,sort=nearest] add skill_applied
kill @e[tag=direction]