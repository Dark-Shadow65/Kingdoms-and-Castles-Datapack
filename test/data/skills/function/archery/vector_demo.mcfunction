summon marker ^ ^ ^1 {Tags:["direction"]}

# ! Remember to define `pos` scoreboard as dummy !

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000
execute store result score #targetX pos as @e[type=marker,tag=direction,limit=1,sort=nearest] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=direction,limit=1,sort=nearest] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=direction,limit=1,sort=nearest] run data get entity @s Pos[2] 1000

# do the math
summon arrow ^ ^ ^1 {Tags:["Apply_vector"]}
execute as @e[tag=Apply_vector] store result entity @s Motion[0] int 0.001 run scoreboard players operation #targetX pos -= #playerX pos
execute as @e[tag=Apply_vector] store result entity @s Motion[1] int 0.001 run scoreboard players operation #targetY pos -= #playerY pos
execute as @e[tag=Apply_vector] store result entity @s Motion[2] int 0.001 run scoreboard players operation #targetZ pos -= #playerZ pos
execute as @e[tag=Apply_vector] run tag @s remove Apply_vector

kill @e[tag=direction]