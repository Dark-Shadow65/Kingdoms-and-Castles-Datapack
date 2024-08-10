advancement revoke @s only skills:culinary/cook_items/cook_cabbage_soup
scoreboard players add @s skills.culinary.xp 3

data modify storage skills.culinary.bonus type set value "minecraft:beetroot_soup"
data modify storage skills.culinary.bonus model_id set value 0
data modify storage skills.culinary.bonus using_converts_to set value ",using_converts_to:{id:\"minecraft:bowl\"}"

scoreboard players operation apply_culinary_skill skills.culinary = @s skills.culinary
scoreboard players operation apply_culinary_skill skills.culinary += floor skills.math 
execute store result storage skills.culinary.bonus nutrition double 0.02 run scoreboard players operation apply_culinary_skill skills.culinary *= cabbage_soup_nutrition skills.math

scoreboard players operation apply_culinary_skill skills.culinary = @s skills.culinary
scoreboard players operation apply_culinary_skill skills.culinary += floor skills.math
execute store result storage skills.culinary.bonus saturation double 0.02 run scoreboard players operation apply_culinary_skill skills.culinary *= cabbage_soup_saturation skills.math

function skills:advancement_functions/culinary/apply_item_bonus with storage skills.culinary.bonus
