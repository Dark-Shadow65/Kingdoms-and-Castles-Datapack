scoreboard objectives add skills.swords dummy
scoreboard objectives add skills.swords.xp dummy
scoreboard objectives add skills.swords.xpnxtlvl dummy
data modify storage skills.swords xpnxtlvl set value 5

scoreboard objectives add skills.swords.damage_bonus dummy
scoreboard objectives add skills.swords.speed_bonus dummy

scoreboard objectives add skills.archery dummy
scoreboard objectives add skills.archery.xp used:bow
scoreboard objectives add skills.archery.usedbow used:bow
scoreboard objectives add skills.archery.xpnxtlvl dummy
scoreboard objectives add skills.archery.pos dummy

data modify storage skills.archery xpnxtlvl set value 5

tellraw @a [{"text":"Swords Module Loaded","color":"dark_green"}]