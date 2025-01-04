$execute if block ~ ~1 ~ minecraft:lightning_rod[facing=down] run summon minecraft:item_display ~ ~0.35 ~-0.1 {item:{id:'$(id)',components:$(components)},Rotation:[180f,-90f]}
$execute if block ~ ~1 ~ minecraft:lightning_rod[facing=north] run summon minecraft:item_display ~ ~0.3 ~-0.1 {item:{id:'$(id)',components:$(components)},Rotation:[180f,-90f]}
$execute if block ~ ~1 ~ minecraft:lightning_rod[facing=east] run summon minecraft:item_display ~0.1 ~0.3 ~ {item:{id:'$(id)',components:$(components)},Rotation:[-90f,-90f]}
$execute if block ~ ~1 ~ minecraft:lightning_rod[facing=south] run summon minecraft:item_display ~ ~0.3 ~0.1 {item:{id:'$(id)',components:$(components)},Rotation:[0f,-90f]}
$execute if block ~ ~1 ~ minecraft:lightning_rod[facing=west] run summon minecraft:item_display ~-0.1 ~0.3 ~ {item:{id:'$(id)',components:$(components)},Rotation:[90f,-90f]}
execute as @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] store result score @s skills.butcher.uses run data get entity @s item.components."minecraft:custom_data".max_uses
execute as @e[type=minecraft:item_display,limit=1,sort=nearest,distance=..0.8] store result score @s skills.butcher.health run data get entity @s item.components."minecraft:custom_data".health
advancement revoke @s only skills:butcher/interacted_with_hook