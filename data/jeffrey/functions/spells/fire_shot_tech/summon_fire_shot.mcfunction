
# find target if jeffrey
execute as @s[tag=Jeffrey] if predicate jeffrey:jeffrey_ai/hastarget run function jeffrey:ai/find_target/find_target
# start casting
effect clear @s slowness
execute as @s[tag=Jeffrey] if entity @e[tag=Target] at @s run tp @s ~ ~ ~ facing entity @e[distance=..32,tag=Target,limit=1] eyes
execute at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ^ ^1 ^ {Tags:["FS","FScurrent"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
# make bullet look at target
execute as @s[tag=Jeffrey] run tag @e[tag=Target] add FStarget
execute as @s unless entity @e[tag=Target] run tag @s add Raycasting
execute as @s unless entity @e[tag=Target] at @s anchored eyes rotated ~ ~ positioned ^ ^ ^ run function jeffrey:spells/fire_shot_tech/check_target_raycast
execute as @e[tag=FScurrent] at @s run tp @s ~ ~ ~ facing entity @e[tag=FStarget,limit=1] eyes
# reset raycast
execute run scoreboard players reset RaycastDistance' JeffreyGame
execute as @e[tag=Raycasting] run tag @s remove Raycasting

# play sound
execute at @e[tag=FScurrent] run playsound minecraft:entity.ender_dragon.shoot ambient @a ~ ~ ~ 0.7 0.1

# reset FScurrent tag
execute as @e[tag=FScurrent] run tag @s remove FScurrent
# reset FStarget tag
execute as @e[tag=FStarget,type=armor_stand] run kill @s
execute as @e[tag=FStarget] run tag @s remove FStarget
# reset target tag
execute as @e[tag=Target] run tag @s remove Target

# reset spells if not jeffrey
execute as @s[tag=!Jeffrey] run scoreboard players reset @s JeffreySpells