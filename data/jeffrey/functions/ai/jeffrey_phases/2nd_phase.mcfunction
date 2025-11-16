# spells: explosion, shot, summoning

# reset blink for jeffrey's 
execute if score @s[tag=Jeffrey] JeffreySpells matches 2 run scoreboard players reset @s JeffreySpells
# reset fire_shot for jeffrey's
execute if score @s[tag=Jeffrey] JeffreySpells matches 3 if score @s JeffreySpellsTimer matches ..0 unless predicate jeffrey:jeffrey_ai/phase2/cancast_fire_shot run scoreboard players reset @s JeffreySpells
execute if score @s[tag=Jeffrey] JeffreySpells matches 3 if score @s JeffreySpellsTimer matches ..0 unless predicate jeffrey:jeffrey_ai/phase2/cancontinue_fire_shot run scoreboard players reset @s JeffreySpells

# cast fire explosion when target is nearby
execute unless score @s JeffreySpells matches -2147483648..2147483647 if predicate jeffrey:jeffrey_ai/hastarget if predicate jeffrey:jeffrey_ai/phase2/random/fire_explosion if predicate jeffrey:jeffrey_ai/phase2/cancast_fire_explosion run function jeffrey:spells/fire_explosion

# cast fire shot when target is at a big distance
execute unless score @s JeffreySpells matches -2147483648..2147483647 if predicate jeffrey:jeffrey_ai/hastarget if predicate jeffrey:jeffrey_ai/phase2/random/fire_shot if predicate jeffrey:jeffrey_ai/phase2/cancast_fire_shot run scoreboard players set @s JeffreySpells 3
execute if score @s JeffreySpells matches 3 if score @s JeffreySpellsTimer matches ..0 run function jeffrey:spells/fire_shot_tech/set_charge

# maybe cast fire dance if not doing any other spell
execute unless score @s JeffreySpells matches -2147483648..2147483647 if predicate jeffrey:jeffrey_ai/phase2/random/fire_dance run function jeffrey:spells/fire_dance

# if in a vehicle get mad
execute unless score @s JeffreySpells matches -2147483648..2147483647 if predicate jeffrey:jeffrey_ai/invehicle run function jeffrey:spells/fire_explosion_tech/set_casting_invehicle

# cast blink when in unsafe area
execute unless score @s JeffreySpells matches -2147483648..2147483647 if block ~ ~ ~ #jeffrey:unsafe if predicate jeffrey:jeffrey_ai/hastarget if predicate jeffrey:jeffrey_ai/phase1/cancast_blink run function jeffrey:spells/blink

# give slowness
effect give @s slowness 1 1 true
# particle
execute at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.1 0.2 0.1 0.01 1 normal
