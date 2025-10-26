# Pumpkin Hunt datapack load script
tellraw @a[gamemode=creative] {"text":"Nether event datapack loaded successfully!","color":"gold", "italic": true}

scoreboard objectives add fogProgress dummy "Fog Progress"
scoreboard objectives add eclipseStage dummy "Eclipse Stage"
scoreboard objectives add randLightning dummy "Random Lightning"
scoreboard objectives add randSpawn dummy "Random Mob Spawn"

## Restart any active fog loops on server restart
# If any fog phase is active, restart the fog loop
execute if score $phase fogProgress matches 1 run schedule function nether-event:fog_phase1_loop 10s replace
execute if score $phase fogProgress matches 2 run schedule function nether-event:fog_phase2_loop 10s replace
execute if score $phase fogProgress matches 3 run schedule function nether-event:fog_phase3_loop 10s replace