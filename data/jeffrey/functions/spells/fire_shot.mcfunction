# ready up spell
# when function is called set spell to 3 (casting fire shot spell)
execute unless score @s JeffreySpells matches -2147483648..2147483647 run function jeffrey:spells/fire_shot_tech/set_charge

#charging (spells = 3)
# run when charging
execute if score @s JeffreySpells matches 3 at @s anchored eyes positioned ^ ^ ^ run particle minecraft:soul_fire_flame ^ ^1 ^ 0.2 0.2 0.2 0.01 1 force
execute if score @s JeffreySpells matches 3 at @s anchored eyes positioned ^ ^ ^ run particle minecraft:soul_fire_flame ^ ^1 ^ 0.2 0.2 0.2 0.01 1 normal
execute if score @s JeffreySpells matches 3 at @s anchored eyes positioned ^ ^ ^ run particle minecraft:soul_fire_flame ^ ^1 ^ 0 0 0 0.05 2 normal
execute if score @s JeffreySpells matches 3 run effect give @s slowness 1 4 true

# summon fire shot
execute if score @s JeffreySpellsTimer matches ..0 if score @s JeffreySpells matches 3 run function jeffrey:spells/fire_shot_tech/summon_fire_shot









