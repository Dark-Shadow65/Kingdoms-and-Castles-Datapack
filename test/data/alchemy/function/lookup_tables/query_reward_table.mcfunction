$data modify storage alchemy.query reward set from storage minecraft:rewardlookuptable hold."$(item)"
$data modify storage alchemy.query scale set from storage minecraft:rewardlookuptable hold."$(amount)"

$execute store result storage alchemy.query reward.air int $(amount) run data get storage alchemy.query reward.air
$execute store result storage alchemy.query reward.water int $(amount) run data get storage alchemy.query reward.water
$execute store result storage alchemy.query reward.fire int $(amount) run data get storage alchemy.query reward.fire
$execute store result storage alchemy.query reward.earth int $(amount) run data get storage alchemy.query reward.earth
$execute store result storage alchemy.query reward.soul int $(amount) run data get storage alchemy.query reward.soul

function alchemy:transmutation/modify_elements with storage alchemy.query reward