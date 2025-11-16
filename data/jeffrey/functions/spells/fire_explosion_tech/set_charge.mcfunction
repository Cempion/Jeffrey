# set to charging
scoreboard players set @s JeffreySpells 0
# set charging time
scoreboard players set @s JeffreySpellsTimer 20

# remove slowness effects on caster
effect clear @s slowness
# show secondary casting particles
execute at @s run particle minecraft:enchant ~ ~1.5 ~ 0 0 0 3 75 normal
