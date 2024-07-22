advancement revoke @s only skills:culinary/cook_items/cook_meatpie
scoreboard players add @s skills.culinary.xp 3

data modify storage skills.culinary.bonus type set value "minecraft:pumpkin_pie"
data modify storage skills.culinary.bonus model_id set value 0
data modify storage skills.culinary.bonus using_converts_to set value ""

scoreboard players operation apply_culinary_skill skills.culinary = @s skills.culinary
scoreboard players operation apply_culinary_skill skills.culinary += floor skills.math 
execute store result storage skills.culinary.bonus nutrition double 0.01 run scoreboard players operation apply_culinary_skill skills.culinary *= meatpie_nutrition skills.math

scoreboard players operation apply_culinary_skill skills.culinary = @s skills.culinary
scoreboard players operation apply_culinary_skill skills.culinary += floor skills.math
execute store result storage skills.culinary.bonus saturation double 0.01 run scoreboard players operation apply_culinary_skill skills.culinary *= meatpie_saturation skills.math

function skills:advancement_functions/culinary/apply_item_bonus with storage skills.culinary.bonus
