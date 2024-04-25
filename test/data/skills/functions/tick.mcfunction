
function skills:woodcutting/tick
<<<<<<< HEAD
function skills:mining/tick
=======
function skills:blacksmithing/tick
>>>>>>> b10065b32eb261c4bf685019d27d08fe802a3135
scoreboard players add dummy skills.clock 1
execute if score dummy skills.clock matches 120.. run function skills:clock