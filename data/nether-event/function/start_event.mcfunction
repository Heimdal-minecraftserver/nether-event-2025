title @a title {"text":"Something feels wrong...","color":"gray"}
title @a subtitle {"text":"The Nether is calling...","color":"red"}

playsound minecraft:ambient.cave ambient @a ~ ~ ~ 1 0.8

gamerule allowEnteringNetherUsingPortals false

## TODO:
#laat deze functie starten door een advancement met een tick trigger.
#verander @a naar @s om je code meer efficiënt te maken
#voeg een subtitle toe die het netehrevent aankondigdt.
#tag in deze functie de spelers zodat ze trackable zijn.
#laat deze functie "nether-event:fog_phase1" éénmalig starten, afhankelijk van of de fase al gestart is volgens een scoreboard.