$execute positioned ~$(x) ~-2 ~$(z) if block ~ ~-1 ~ dirt_path run fill ~ ~-1 ~ ~ ~-1 ~ dirt
$execute positioned ~$(x) ~-1 ~$(z) if block ~ ~-1 ~ dirt_path run fill ~ ~-1 ~ ~ ~-1 ~ dirt
$execute positioned ~$(x) ~ ~$(z) if block ~ ~-1 ~ dirt_path run fill ~ ~-1 ~ ~ ~-1 ~ dirt
$execute positioned ~$(x) ~1 ~$(z) if block ~ ~-1 ~ dirt_path run fill ~ ~-1 ~ ~ ~-1 ~ dirt
$execute positioned ~$(x) ~2 ~$(z) if block ~ ~-1 ~ dirt_path run fill ~ ~-1 ~ ~ ~-1 ~ dirt

$execute positioned ~$(x) ~-2 ~$(z) if block ~ ~-1 ~ #dirt if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ short_grass
$execute positioned ~$(x) ~-1 ~$(z) if block ~ ~-1 ~ #dirt if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ short_grass
$execute positioned ~$(x) ~ ~$(z) if block ~ ~-1 ~ #dirt if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ short_grass
$execute positioned ~$(x) ~1 ~$(z) if block ~ ~-1 ~ #dirt if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ short_grass
$execute positioned ~$(x) ~2 ~$(z) if block ~ ~-1 ~ #dirt if block ~ ~ ~ air run fill ~ ~ ~ ~ ~ ~ short_grass
