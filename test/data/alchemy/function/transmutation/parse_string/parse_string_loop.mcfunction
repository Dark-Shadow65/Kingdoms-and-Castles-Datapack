$scoreboard players set parseIndex alchemy.math $(index)
$scoreboard players set parseIndexPlus alchemy.math $(indexplus)

$data modify storage minecraft:alchemy.book char set string storage alchemy.book raw $(index) $(indexplus)
execute if data storage alchemy.book {char:"\\n"} run say true

execute store result storage alchemy.book indexs.index int 1 run scoreboard players add parseIndex alchemy.math 1
execute store result storage alchemy.book indexs.indexPlus int 1 run scoreboard players add parseIndexPlus alchemy.math 1