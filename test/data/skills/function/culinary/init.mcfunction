scoreboard objectives add skills.culinary dummy
scoreboard objectives add skills.culinary.xp dummy
scoreboard objectives add skills.culinary.xpnxtlvl dummy

data modify storage skills.culinary xpnxtlvl set value 5

scoreboard players set meatpie_nutrition skills.math 3
scoreboard players set meatpie_saturation skills.math 4

scoreboard players set cabbage_soup_nutrition skills.math 2
scoreboard players set cabbage_soup_saturation skills.math 1

scoreboard objectives add skills.archery dummy
scoreboard objectives add skills.archery.xp used:bow
scoreboard objectives add skills.archery.usedbow used:bow
scoreboard objectives add skills.archery.xpnxtlvl dummy
scoreboard objectives add skills.archery.pos dummy

data modify storage skills.archery xpnxtlvl set value 5

tellraw @a [{"text":"Culinary Module Loaded","color":"dark_green"}]