# Pumpkin Hunt datapack load script
## Announce successful load to creative mode players
tellraw @a[gamemode=creative] {"text":"Nether event datapack loaded successfully!","color":"gold", "italic": true}

## Create main scoreboard for tracking event phases
scoreboard objectives add nether_event dummy "Nether Event Status"
scoreboard players add .fogPhase nether_event 0
scoreboard players add .eclipsePhase nether_event 0

scoreboard objectives add nether_event_spawn dummy "Nether Event RNG"
scoreboard players add .amountLightning nether_event_spawn 0
scoreboard players add .amountMobs nether_event_spawn 0
scoreboard players add .typeMob nether_event_spawn 0

scoreboard objectives add nether_event_time_tracker dummy "Nether Event Time Tracker"
scoreboard players add .currentTime nether_event_time_tracker 0
scoreboard players add .timeToAdd nether_event_time_tracker 0
scoreboard players set #cycle nether_event_time_tracker 24000
scoreboard players set #targetTime nether_event_time_tracker 13000

execute if score .fogPhase nether_event matches 1 run function nether-event:fog/phase1_loop
execute if score .fogPhase nether_event matches 2 run function nether-event:fog/phase2_loop
execute if score .fogPhase nether_event matches 3 run function nether-event:fog/phase3_loop
execute if score .eclipsePhase nether_event matches 1 run function nether-event:eclipse/loop

## Disable Nether portal travel during the event
gamerule allowEnteringNetherUsingPortals false
gamerule playersSleepingPercentage 100
gamerule doInsomnia false