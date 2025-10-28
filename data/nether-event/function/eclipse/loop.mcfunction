# Eclipse Loop: Ongoing Effects During Eclipse

## Ambient Sounds
playsound minecraft:entity.ghast.scream ambient @a ~ ~ ~ 1 1
playsound minecraft:ambient.nether_wastes.loop ambient @a ~ ~ ~ 1 0.5

## Thick fog swirl
execute at @a[tag=nether_event_2025] run particle minecraft:smoke ~ ~1 ~ 3 2 3 0.05 150
execute at @a[tag=nether_event_2025] run particle minecraft:ash ~ ~1 ~ 3 2 3 0.05 120

## Eclipse Mob Waves and Lightning
### Spawn mob waves only if no hostile mobs are nearby
execute store result score .amountMobs nether_event_spawn run random value 4..7
execute as @a[tag=nether_event_2025] unless entity @e[predicate=nether-event:hostile_type,distance=..10] run function nether-event:eclipse/helpers/generate_mob_params

# Determine next lightning strike count
execute store result score .amountLightning nether_event_spawn run random value 0..3
execute as @a[tag=nether_event_2025] run function nether-event:eclipse/helpers/generate_lightning_params

## Schedule next eclipse loop in 30 seconds
schedule function nether-event:eclipse/loop 30s
