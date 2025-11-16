

# set to casting
scoreboard players set @s JeffreySpells 1
# set casting time
scoreboard players set @s JeffreySpellsTimer 10

# clear slowness
effect clear @s slowness

# play sound
execute at @s run playsound minecraft:entity.ender_dragon.shoot ambient @a ~ ~ ~ 0.7 0.1