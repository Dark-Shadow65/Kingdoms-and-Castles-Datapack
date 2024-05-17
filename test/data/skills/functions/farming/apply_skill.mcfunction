execute unless score count skills.math matches -2147483648..2147483647 store result score count skills.math run data get entity @s Item.count
execute if predicate skills:farming/skill_apply_check run scoreboard players add count skills.math 1
say true

execute if score @s skills.math matches ..0 run return fail
scoreboard players remove @s skills.math 50

execute if score @s skills.math matches 1.. run function skills:farming/apply_skill {sub:1}
$execute if score one skills.math matches $(sub) run return fail

execute store result entity @s Item.count int 1 run scoreboard players get count skills.math
scoreboard players reset count skills.math 