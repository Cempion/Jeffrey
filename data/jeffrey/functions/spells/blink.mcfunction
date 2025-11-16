# when function is called set spell to 2 (casting blink spell)
execute unless score @s JeffreySpells matches -2147483648..2147483647 run scoreboard players set @s JeffreySpells 2

# if caster is a jeffrey make it look at its target
execute if score @s JeffreySpells matches 2 as @s[tag=Jeffrey] run function jeffrey:ai/find_target/find_target
execute if score @s JeffreySpells matches 2 as @s[tag=Jeffrey] run tp @s ~ ~ ~ facing entity @e[tag=Target,limit=1] feet
# cast raycast
execute if score @s JeffreySpells matches 2 at @s anchored eyes rotated ~ ~ positioned ^ ^ ^ run function jeffrey:spells/blink_tech/casting_blink_raycast
# reset raycast
execute if score @s JeffreySpells matches 2 run scoreboard players reset RaycastDistance' JeffreyGame

# explosion particles
execute if score @s JeffreySpells matches 2 at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.2 20 force
execute if score @s JeffreySpells matches 2 at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.2 80 normal
# playsound
execute if score @s JeffreySpells matches 2 at @s run playsound minecraft:entity.ender_dragon.shoot ambient @a ~ ~ ~ 0.7 1.2
execute if score @s JeffreySpells matches 2 at @s run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 0.7 1

# reset spells for non jeffrey's
execute if score @s[tag=!Jeffrey] JeffreySpells matches 2 run scoreboard players reset @s JeffreySpells

# reset target tag
execute as @e[tag=Target] run tag @s remove Target




