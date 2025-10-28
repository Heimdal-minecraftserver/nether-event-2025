# Light fog pulse (particles and darkness effect)
effect give @a[tag=nether_event_2025] minecraft:darkness 5 0 true
execute as @a[tag=nether_event_2025] run particle minecraft:ash ~ ~1 ~ 2 1 2 0.02 80
playsound minecraft:ambient.cave ambient @a[tag=nether_event_2025] ~ ~ ~ 1 0.8

# Schedule next fog pulse in 5 minutes
schedule function nether-event:fog/phase1_loop 600s

## TODO:
#Laat de target selectors verwijzen naar de getagde spelers.
#eerste verwijzing van een "execute" command die niet wordt getriggerd door een speler werkt niet met @s, hier wil je @a gebruiken met verwijzing naar de tag.