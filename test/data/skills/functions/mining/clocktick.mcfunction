execute as @a if score @s skills.mining.xp >= @s skills.mining.xpnxtlvl run function skills:mining/levelup

execute as @a store result score @s skills.mining.xpnxtlvl run data get storage skills.mining xpnxtlvl
execute as @a run scoreboard players operation @s skills.mining.xpnxtlvl *= @s skills.mining

execute as @a if score @s skills.mining.blocks.andesite matches 1.. run function skills:mining/onbreak/andesite
execute as @a if score @s skills.mining.blocks.stone matches 1.. run function skills:mining/onbreak/stone
execute as @a if score @s skills.mining.blocks.granite matches 1.. run function skills:mining/onbreak/granite
execute as @a if score @s skills.mining.blocks.deepslate matches 1.. run function skills:mining/onbreak/deepslate
execute as @a if score @s skills.mining.blocks.diorite matches 1.. run function skills:mining/onbreak/diorite
execute as @a if score @s skills.mining.blocks.calcite matches 1.. run function skills:mining/onbreak/calcite
execute as @a if score @s skills.mining.blocks.coal_ore matches 1.. run function skills:mining/onbreak/coal_ore
execute as @a if score @s skills.mining.blocks.deepslate_coal_ore matches 1.. run function skills:mining/onbreak/deepslate_coal_ore
execute as @a if score @s skills.mining.blocks.iron_ore matches 1.. run function skills:mining/onbreak/iron_ore
execute as @a if score @s skills.mining.blocks.deepslate_iron_ore matches 1.. run function skills:mining/onbreak/deepslate_iron_ore
execute as @a if score @s skills.mining.blocks.copper_ore matches 1.. run function skills:mining/onbreak/copper_ore
execute as @a if score @s skills.mining.blocks.deepslate_copper_ore matches 1.. run function skills:mining/onbreak/deepslate_copper_ore
execute as @a if score @s skills.mining.blocks.gold_ore matches 1.. run function skills:mining/onbreak/gold_ore
execute as @a if score @s skills.mining.blocks.deepslate_gold_ore matches 1.. run function skills:mining/onbreak/deepslate_gold_ore
execute as @a if score @s skills.mining.blocks.redstone_ore matches 1.. run function skills:mining/onbreak/redstone_ore
execute as @a if score @s skills.mining.blocks.deepslate_redstone_ore matches 1.. run function skills:mining/onbreak/deepslate_redstone_ore
execute as @a if score @s skills.mining.blocks.emerald_ore matches 1.. run function skills:mining/onbreak/emerald_ore
execute as @a if score @s skills.mining.blocks.deepslate_emerald_ore matches 1.. run function skills:mining/onbreak/deepslate_emerald_ore
execute as @a if score @s skills.mining.blocks.lapis_ore matches 1.. run function skills:mining/onbreak/lapis_ore
execute as @a if score @s skills.mining.blocks.deepslate_lapis_ore matches 1.. run function skills:mining/onbreak/deepslate_lapis_ore
execute as @a if score @s skills.mining.blocks.diamond_ore matches 1.. run function skills:mining/onbreak/diamond_ore
execute as @a if score @s skills.mining.blocks.deepslate_diamond_ore matches 1.. run function skills:mining/onbreak/deepslate_diamond_ore

execute as @a run scoreboard players operation @s skills.mining.applyskill = @s skills.mining
execute as @a run scoreboard players operation @s skills.mining.applyskill /= @s skills.mining.skilldivisor