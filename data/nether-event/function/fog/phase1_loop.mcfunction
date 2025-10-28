# Light fog pulse (particles and darkness effect)
effect give @a minecraft:darkness 5 0 true
execute as @s at @s run particle minecraft:ash ~ ~1 ~ 2 1 2 0.02 80

# Schedule next fog pulse in 5 minutes
schedule function nether-event:fog/phase1_loop 600s

## TODO:
#Voeg een geluidseffect toe bij elke fog pulse om de sfeer te verhogen.
#Laat de target selectors verwijzen naar de getagde spelers.
#eerste verwijzing van een "execute" command die niet wordt getriggerd door een speler werkt niet met @s, hier wil je @a gebruiken met verwijzing naar de tag.