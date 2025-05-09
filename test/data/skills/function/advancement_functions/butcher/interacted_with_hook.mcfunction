execute as @e[type=minecraft:interaction] at @s on target if entity @s[advancements={skills:butcher/interacted_with_hook=true}] unless entity @e[type=minecraft:item_display,distance=..0.8] if items entity @s weapon.mainhand minecraft:music_disc_blocks[!minecraft:jukebox_playable] run function skills:advancement_functions/butcher/place_item_on_hook with entity @s SelectedItem
execute as @e[type=minecraft:interaction] at @s on attacker if entity @s[advancements={skills:butcher/hit_hook=true}] unless entity @e[type=minecraft:item_display,distance=..0.8] run fill ~ ~1 ~ ~ ~1 ~ air destroy
execute as @e[type=minecraft:interaction] at @s on attacker if entity @s[advancements={skills:butcher/hit_hook=true}] unless entity @e[type=minecraft:item_display,distance=..0.8] run kill @e[type=interaction,distance=..0.8]
execute as @e[type=minecraft:interaction] at @s on attacker if entity @s[advancements={skills:butcher/hit_hook=true},nbt={SelectedItem:{components:{"minecraft:custom_model_data":{strings:["onehanded","Knife"]}}}}] if entity @e[type=minecraft:item_display,distance=..0.8] run function skills:advancement_functions/butcher/butcher
execute as @e[type=minecraft:interaction] at @s run data modify storage skills.butcher tmpstorage.customdata set from entity @e[type=minecraft:item_display,distance=..0.8,limit=1,sort=nearest] item.components."minecraft:custom_data"
execute as @e[type=minecraft:interaction] at @s run data modify storage skills.butcher tmpstorage.model set from entity @e[type=minecraft:item_display,distance=..0.8,limit=1,sort=nearest] item.components."minecraft:item_model"
execute as @e[type=minecraft:interaction] at @s on attacker if entity @s[advancements={skills:butcher/hit_hook=true}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{strings:["onehanded","Knife"]}}}}] if entity @e[type=minecraft:item_display,distance=..0.8] run function skills:advancement_functions/butcher/return_from_hook with storage skills.butcher tmpstorage


execute as @e[type=minecraft:interaction] run data remove entity @s interaction
execute as @e[type=minecraft:interaction] run data remove entity @s attack

advancement revoke @s only skills:butcher/interacted_with_hook
advancement revoke @s only skills:butcher/hit_hook
