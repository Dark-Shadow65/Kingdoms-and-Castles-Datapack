$say $(model)
$give @s music_disc_blocks[minecraft:item_model="$(model)",minecraft:custom_data=$(customdata),!minecraft:jukebox_playable]
kill @e[type=minecraft:item_display,distance=..0.8,limit=1]