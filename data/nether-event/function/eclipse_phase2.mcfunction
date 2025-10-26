### Eclipse Phase 3: The Seal Shatters
scoreboard players set global eclipseStage 2

title @a title {"text":"THE SEAL SHATTERS!","color":"red"}
playsound minecraft:entity.ender_dragon.growl master @a
execute at @a run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 5
execute at @a run particle minecraft:flame ~ ~1 ~ 4 2 4 0.05 300
weather thunder

# Clear existing eclipse loop
schedule clear nether-event:eclipse_loop

# Fire eruption near players
execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:fire replace minecraft:air

# Enable Nether
gamerule allowEnteringNetherUsingPortals true

# Schedule cleanup sunrise
schedule function nether-event:cleanup 60s

