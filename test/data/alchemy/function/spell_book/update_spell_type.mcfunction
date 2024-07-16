data modify storage alchemy.book tree set from entity @s SelectedItem.components."minecraft:custom_data"

$data modify storage alchemy.book tree.pages[$(page)].value set value []
$data modify storage alchemy.book tree.pages[$(page)].display set value []
$data modify storage alchemy.book tree.pages[$(page)].value insert 0 value $(set_to)
$data modify storage alchemy.book tree.pages[$(page)].display insert 0 value $(set_to)

item modify entity @s weapon.mainhand alchemy:update_book