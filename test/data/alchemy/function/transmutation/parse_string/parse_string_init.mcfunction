scoreboard players set parseIndexPage alchemy.math 0

data modify storage alchemy.book page set value []
data modify storage alchemy.book raw set string entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw
function alchemy:transmutation/parse_string/parse_string_loop {index:0,indexplus:1}