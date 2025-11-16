bossbar add minecraft:jeffrey [{"text":"b","color":"aqua","obfuscated":true},{"text":" Jeffrey ","obfuscated":false},{"text":"b"}]
    bossbar set minecraft:jeffrey color blue 

scoreboard objectives add JeffreyGame dummy

scoreboard objectives add JeffreySpells dummy

scoreboard objectives add JeffreySpellsTimer dummy

scoreboard objectives add JeffreyHealth dummy

scoreboard objectives add JeffreyMaxHealth dummy

scoreboard objectives add JeffreyPhase2 dummy
    scoreboard players set 2' JeffreyPhase2 2

scoreboard objectives add JeffreyPhase3 dummy
    scoreboard players set 3' JeffreyPhase3 3
