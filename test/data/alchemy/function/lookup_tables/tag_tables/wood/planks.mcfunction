#generate list of all items in tag and tag name
data merge storage minecraft:tagtable {hold:{"#alchemy:planks":"planks","minecraft:oak_planks":"planks","minecraft:spruce_planks":"planks","minecraft:birch_planks":"planks","minecraft:jungle_planks":"planks","minecraft:acacia_planks":"planks","minecraft:dark_oak_planks":"planks","minecraft:mangrove_planks":"planks","minecraft:cherry_planks":"planks"}}

#generate reward list for the tagged items
data modify storage rewardlookuptable hold.planks set value {earth:2,fire:0,water:0,air:0,soul:0}