# spells:  explosion,  blink, dragon's curse

# reset blink for jeffrey's 
execute if score @s[tag=Jeffrey] JeffreySpells matches 2 if predicate jeffrey:jeffrey_ai/invehicle run scoreboard players reset @s JeffreySpells
execute if score @s[tag=Jeffrey] JeffreySpells matches 2 unless predicate jeffrey:jeffrey_ai/phase3/cancontinue_blink run scoreboard players reset @s JeffreySpells
# reset fire_shot for jeffrey's
execute if score @s[tag=Jeffrey] JeffreySpells matches 3 if score @s JeffreySpellsTimer matches ..0 run scoreboard players reset @s JeffreySpells

# cast fire explosion when target is nearby
execute unless score @s JeffreySpells matches -2147483648..2147483647 if predicate jeffrey:jeffrey_ai/hastarget if predicate jeffrey:jeffrey_ai/phase3/random/fire_explosion if predicate jeffrey:jeffrey_ai/phase3/cancast_fire_explosion run function jeffrey:spells/fire_explosion

# cast blink when target is at a distance
execute unless score @s JeffreySpells matches -2147483648..2147483647 if predicate jeffrey:jeffrey_ai/hastarget if predicate jeffrey:jeffrey_ai/phase3/random/blink if predicate jeffrey:jeffrey_ai/phase3/cancast_blink run scoreboard players set @s JeffreySpells 2
execute if score @s JeffreySpells matches 2 run function jeffrey:spells/blink

# if in a vehicle get mad
execute unless score @s JeffreySpells matches -2147483648..2147483647 if predicate jeffrey:jeffrey_ai/invehicle run function jeffrey:spells/fire_explosion_tech/set_casting_invehicle

# cast blink when in unsafe area
execute unless score @s JeffreySpells matches -2147483648..2147483647 if block ~ ~ ~ #jeffrey:unsafe if predicate jeffrey:jeffrey_ai/hastarget if predicate jeffrey:jeffrey_ai/phase3/cancast_blink run function jeffrey:spells/blink



# particle
execute at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.1 0.2 0.1 0.02 2 normal
