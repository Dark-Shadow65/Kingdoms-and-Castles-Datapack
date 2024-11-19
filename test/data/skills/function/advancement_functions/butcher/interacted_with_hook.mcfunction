execute as @e[type=minecraft:interaction] at @s on target if entity @s[advancements={skills:butcher/interacted_with_hook=true}] if items entity @s weapon.mainhand minecraft:music_disc_blocks[!minecraft:jukebox_playable] run function skills:advancement_functions/butcher/place_item_on_hook with entity @s SelectedItem
execute as @e[type=minecraft:interaction] at @s on attacker if entity @s[advancements={skills:butcher/hit_hook=true}] unless entity @e[type=minecraft:item_display,distance=..0.8] run fill ~ ~1 ~ ~ ~1 ~ air destroy
execute as @e[type=minecraft:interaction] at @s on attacker if entity @s[advancements={skills:butcher/hit_hook=true}] unless entity @e[type=minecraft:item_display,distance=..0.8] run kill @e[type=interaction,distance=..0.8]
execute as @e[type=minecraft:interaction] at @s on attacker if entity @s[advancements={skills:butcher/hit_hook=true}] if entity @e[type=minecraft:item_display,distance=..0.8] run kill @e[type=minecraft:item_display,distance=..0.8]


execute as @e[type=minecraft:interaction] run data remove entity @s interaction
execute as @e[type=minecraft:interaction] run data remove entity @s attack

advancement revoke @s only skills:butcher/interacted_with_hook
advancement revoke @s only skills:butcher/hit_hook
