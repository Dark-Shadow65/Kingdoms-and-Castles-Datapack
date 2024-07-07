scoreboard objectives add skills.farming dummy
scoreboard objectives add skills.farming.xp dummy
scoreboard objectives add skills.farming.xpnxtlvl dummy

data modify storage skills.farming xpnxtlvl set value 5

scoreboard objectives add skills.farming.crops.wheat minecraft.mined:minecraft.wheat
scoreboard objectives add skills.farming.crops.carrots minecraft.mined:minecraft.carrots
scoreboard objectives add skills.farming.crops.beetroots minecraft.mined:minecraft.beetroots

scoreboard objectives add skills.archery dummy
scoreboard objectives add skills.archery.xp used:bow
scoreboard objectives add skills.archery.usedbow used:bow
scoreboard objectives add skills.archery.xpnxtlvl dummy
scoreboard objectives add skills.archery.pos dummy

data modify storage skills.archery xpnxtlvl set value 5

tellraw @a [{"text":"Farming Module Loaded","color":"dark_green"}]