$execute unless data storage minecraft:tagtable hold."$(filter_item)" run return run title @s actionbar "Failed to query tag or item in table"
$execute store result storage alchemy.decomp amount int 1 run clear @s $(filter_item) $(amount)
$data modify storage alchemy.decomp item set from storage minecraft:tagtable hold."$(filter_item)"
function alchemy:lookup_tables/query_reward_table with storage alchemy.decomp