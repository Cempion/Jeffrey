
# when function is called set spell to 0 (casting fire explosion spell)
execute if score @s JeffreySpellsTimer matches ..0 unless score @s JeffreySpells matches -2147483648..2147483647 run function jeffrey:spells/fire_explosion_tech/set_charge

#charging (spells = 0)
# run when charging
execute if score @s JeffreySpells matches 0 at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.4 0.8 0.4 0.01 1 force
execute if score @s JeffreySpells matches 0 at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.4 0.8 0.4 0.01 4 normal
execute if score @s JeffreySpells matches 0 run effect give @s slowness 1 4 true

# if cooldown is empty stop charging and start casting
execute if score @s JeffreySpellsTimer matches ..0 if score @s JeffreySpells matches 0 run function jeffrey:spells/fire_explosion_tech/set_casting

# casting (spells = 1)
# run while casting
execute at @s if score @s JeffreySpells matches 1 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.2 5 force
execute at @s if score @s JeffreySpells matches 1 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.2 20 normal

execute at @s if score @s JeffreySpells matches 1 run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.01 15 force
execute at @s if score @s JeffreySpells matches 1 run particle minecraft:soul_fire_flame ~ ~ ~ 1 1 1 0.01 60 normal
execute at @s if score @s JeffreySpells matches 1 if predicate jeffrey:playsound run playsound minecraft:entity.ender_dragon.shoot ambient @a ~ ~ ~ 0.7 0.7
execute at @s if score @s JeffreySpells matches 1 if predicate jeffrey:playsound run playsound minecraft:entity.generic.burn ambient @a ~ ~ ~ 0.7 1

execute at @s if score @s JeffreySpells matches 1 as @e[distance= 0.0001..4,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin] run effect give @s instant_damage 1 1 true
execute if score @s JeffreySpells matches 1 run effect give @s slowness 1 5 true
# kill stuff jeffrey can sit in
execute at @s if score @s JeffreySpells matches 1 run kill @e[type=#jeffrey:sitable,distance=..4]

# end spell
execute if score @s JeffreySpellsTimer matches ..0 if score @s JeffreySpells matches 1 run effect clear @s slowness
execute if score @s JeffreySpellsTimer matches ..0 if score @s JeffreySpells matches 1 run scoreboard players reset @s JeffreySpells
execute if score @s JeffreySpellsTimer matches ..0 unless score @s JeffreySpells matches -2147483648..2147483647 run scoreboard players set @s JeffreySpellsTimer 0



