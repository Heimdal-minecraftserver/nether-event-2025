title @a title {"text":"Something feels wrong...","color":"gray"}
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 0.8

gamerule allowEnteringNetherUsingPortals false

## TODO:
#laat deze functie starten door een advancement met een tick trigger.
#verander @a naar @s om je code meer efficiënt te maken
#voeg een subtitle toe die het netehrevent aankondigdt.
#sound command worden geluiden best gelinkt aan de categorie waar ze bij horen, spelers zetten geluiden volgens hun settings. Bij "master" wordt dit gelinkt aan de global sounds, in de plaats daarvan zou ik hem op "ambient" zetten aangezien dat het type sound is dat je wilt bereiken.
#tag in deze functie de spelers zodat ze trackable zijn.
#laat deze functie "nether-event:fog_phase1" éénmalig starten, afhankelijk van of de fase al gestart is volgens een scoreboard.