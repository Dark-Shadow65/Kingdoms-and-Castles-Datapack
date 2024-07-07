scoreboard objectives add skills.woodcutting dummy
scoreboard objectives add skills.woodcutting.xp dummy
scoreboard objectives add skills.woodcutting.xpnxtlvl dummy
data modify storage skills.woodcutting xpnxtlvl set value 5

scoreboard objectives add skills.woodcutting.woods.oak minecraft.mined:oak_log
scoreboard objectives add skills.woodcutting.woods.spruce minecraft.mined:spruce_log
scoreboard objectives add skills.woodcutting.woods.birch minecraft.mined:birch_log
scoreboard objectives add skills.woodcutting.woods.jungle minecraft.mined:jungle_log
scoreboard objectives add skills.woodcutting.woods.acacia minecraft.mined:acacia_log
scoreboard objectives add skills.woodcutting.woods.darkoak minecraft.mined:dark_oak_log
scoreboard objectives add skills.woodcutting.woods.mangrove minecraft.mined:mangrove_log
scoreboard objectives add skills.woodcutting.woods.cherry minecraft.mined:cherry_log

scoreboard objectives add skills.archery dummy
scoreboard objectives add skills.archery.xp used:bow
scoreboard objectives add skills.archery.usedbow used:bow
scoreboard objectives add skills.archery.xpnxtlvl dummy
scoreboard objectives add skills.archery.pos dummy

data modify storage skills.archery xpnxtlvl set value 5

tellraw @a [{"text":"Wood Cutting Module Loaded","color":"dark_green"}]