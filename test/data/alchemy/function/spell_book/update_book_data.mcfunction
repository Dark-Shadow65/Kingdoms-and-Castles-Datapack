data modify storage alchemy.book tree set from entity @s SelectedItem.components."minecraft:custom_data"
#item modify entity @s weapon.mainhand alchemy:clear_book

$data modify storage alchemy.book tree.pages[$(page)] set value {}
$data modify storage alchemy.book tree.pages[$(page)].display set value []
$data modify storage alchemy.book tree.pages[$(page)].$(address).next_value set from storage alchemy.book lookup.$(address).next_value
$data modify storage alchemy.book tree.pages[$(page)].display append from storage alchemy.book lookup.$(address).display
$data modify storage alchemy.book tree.pages[$(page)].$(address).vars set from storage alchemy.book lookup.$(address).vars.default