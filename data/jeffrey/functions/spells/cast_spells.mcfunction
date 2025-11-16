# cast spells
# fire explosion: 0 = charge-up  1 = explosion
execute if score @s JeffreySpells matches 0..1 run function jeffrey:spells/fire_explosion
# fire shot: 3 = charge-up
execute if score @s JeffreySpells matches 3 run function jeffrey:spells/fire_shot
execute as @e[tag=FS] at @s run function jeffrey:spells/fire_shot_tech/casting_fire_shot
# cast fire dance
execute as @e[tag=FD] at @s run function jeffrey:spells/fire_dance_tech/casting_fire_dance