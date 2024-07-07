scoreboard objectives add skills.axes dummy
scoreboard objectives add skills.axes.xp dummy
scoreboard objectives add skills.axes.xpnxtlvl dummy
data modify storage skills.axes xpnxtlvl set value 5

scoreboard objectives add skills.axes.damage_bonus dummy
scoreboard objectives add skills.axes.speed_bonus dummy

scoreboard objectives add skills.archery dummy
scoreboard objectives add skills.archery.xp used:bow
scoreboard objectives add skills.archery.usedbow used:bow
scoreboard objectives add skills.archery.xpnxtlvl dummy
scoreboard objectives add skills.archery.pos dummy

data modify storage skills.archery xpnxtlvl set value 5

tellraw @a [{"text":"Axes Module Loaded","color":"dark_green"}]