scoreboard objectives add skills.archery dummy
scoreboard objectives add skills.archery.xp used:bow
scoreboard objectives add skills.archery.usedbow used:bow
scoreboard objectives add skills.archery.xpnxtlvl dummy
scoreboard objectives add skills.archery.pos dummy

data modify storage skills.archery xpnxtlvl set value 5

tellraw @a [{"text":"Archery Module Loaded","color":"dark_green"}]