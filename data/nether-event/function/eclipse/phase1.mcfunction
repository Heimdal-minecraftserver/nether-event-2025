### Eclipse Phase 1: The Moon Darkens
scoreboard players set global eclipseStage 1
title @a title {"text":"The Moon Darkens","color":"dark_purple"}
title @a subtitle {"text":"The Eclipse Begins...","color":"gray"}

# Clear any existing fog loops
schedule clear nether-event:fog/phase3_loop

time set midnight
weather thunder
playsound minecraft:entity.ender_dragon.growl master @a
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 3 2 3 0.05 200

# Start the repeating long night loop
function nether-event:eclipse/loop

## TODO:
#specificieer @a met de tag.
#"time command" messes with server time, kan je niet gebruiken op die manier. Als je het persee wilt gebruiken, moet je de current time query runnen om dan te gaan bepalen hoeveel tijd je erbij wilt zetten. Wiki: https://minecraft.wiki/w/Commands/time. Je houd best ook rekening met de moonphases https://minecraft.wiki/w/Daylight_cycle. Als je dit toch wilt gebruiken, dan ga je een heel scoreboard systeem nodig hebben die berekend wat de current time is via een querry, die opslaat, bepaald waar in de moonphase die zich bevind, berekend wat de volgende nighttime is dat je wil bereiken en die time toevoegd aan de current time.
#specifieer hoe lang thunder moet duren tenzij je dat aan de game zelf wil overlaten.
#sound command worden geluiden best gelinkt aan de categorie waar ze bij horen, spelers zetten geluiden volgens hun settings. Bij "master" wordt dit gelinkt aan de global sounds, in de plaats daarvan zou ik hem op "ambient" zetten aangezien dat het type sound is dat je wilt bereiken.
# execute "as @a" is enkel relevant als de speler effectief iets moet uitvoeren. Een partical gebeurd in de wereld, niet in de UI, dus is "as" overbodig.
# execute "as @a" is enkel relevant als de speler effectief iets moet uitvoeren. Een partical gebeurd in de wereld, niet in de UI, dus is "as" overbodig.