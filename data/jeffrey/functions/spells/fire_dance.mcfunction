# when function is called set spell to 4 (casting fire dance spell)
execute unless score @s JeffreySpells matches -2147483648..2147483647 run scoreboard players set @s JeffreySpells 4

execute if score @s JeffreySpells matches 4 unless entity @e[tag=FD,distance=..32] at @s run function jeffrey:spells/fire_dance_tech/summon_fd 

# show secondary casting particles
execute as @e[tag=FDcurrent] at @s run particle minecraft:enchant ~ ~1.5 ~ 0 0 0 3 75 normal
execute as @e[tag=FDcurrent] run scoreboard players set @s JeffreyGame 160
# remove FDcurrent tag
execute as @e[tag=FDcurrent] run tag @s remove FDcurrent

execute if score @s JeffreySpells matches 4 run scoreboard players reset @s JeffreySpells
