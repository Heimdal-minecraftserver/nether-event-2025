scoreboard players set global fogProgress 1
title @a title {"text":"The air feels heavy...","color":"gray"}
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 0.8

# Light fog pulse (particles)
function nether-event:fog_phase1_loop
