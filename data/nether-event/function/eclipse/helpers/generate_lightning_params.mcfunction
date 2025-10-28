# === Rare lightning effect ===
## Determine random positions for next lightning strikes
execute store result storage minecraft:macro lightning.x int 1 run random value -16..16
execute store result storage minecraft:macro lightning.z int 1 run random value -16..16

execute at @s[tag=nether_event_2025] run function nether-event:eclipse/helpers/spawn_lightning with storage minecraft:macro lightning

## Use recursion to summon multiple bolts based on .amountLightning
execute unless score .amountLightning nether_event_spawn matches 0 run scoreboard players remove .amountLightning nether_event_spawn 1

## Summon lightning at calculated offset positions
execute as @s unless score .amountLightning nether_event_spawn matches 0 run function nether-event:eclipse/helpers/generate_lightning_params