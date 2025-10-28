# Set global fog progress to phase 3
scoreboard players set global fogProgress 3
title @a title {"text":"The fog consumes all...","color":"dark_red"}
playsound minecraft:entity.warden.ambient master @a

# Clear any existing fog pulses
schedule clear nether-event:fog/phase2_loop

# Set time to late night and stop daylight cycle
weather thunder
time set 13000
gamerule doDaylightCycle false

# Heavy fog effect
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 3 1.5 3 0.03 200
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 3 1.5 3 0.03 150

# Start the repeating deep fog loop
function nether-event:fog/phase3_loop

## TODO:
#specificieer @a met de tag.
#sound command worden geluiden best gelinkt aan de categorie waar ze bij horen, spelers zetten geluiden volgens hun settings. Bij "master" wordt dit gelinkt aan de global sounds, in de plaats daarvan zou ik hem op "ambient" zetten aangezien dat het type sound is dat je wilt bereiken.
#specifieer hoe lang thunder moet duren tenzij je dat aan de game zelf wil overlaten.
#"time command" messes with server time, kan je niet gebruiken op die manier. Als je het persee wilt gebruiken, moet je de current time query runnen om dan te gaan bepalen hoeveel tijd je erbij wilt zetten. Wiki: https://minecraft.wiki/w/Commands/time. Je houd best ook rekening met de moonphases https://minecraft.wiki/w/Daylight_cycle. Als je dit toch wilt gebruiken, dan ga je een heel scoreboard systeem nodig hebben die berekend wat de current time is via een querry, die opslaat, bepaald waar in de moonphase die zich bevind, berekend wat de volgende nighttime is dat je wil bereiken en die time toevoegd aan de current time.
# execute "as @a" is enkel relevant als de speler effectief iets moet uitvoeren. Een partical gebeurd in de wereld, niet in de UI, dus is "as" overbodig.