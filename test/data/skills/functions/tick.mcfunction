
function skills:woodcutting/tick
function skills:blacksmithing/tick
scoreboard players add dummy skills.clock 1
execute if score dummy skills.clock matches 120.. run function skills:clock