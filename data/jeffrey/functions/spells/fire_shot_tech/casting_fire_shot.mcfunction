# count up distance traveled
execute as @s run scoreboard players add @s JeffreyGame 1

# check if max distance is reached
execute if score @s JeffreyGame matches 33.. as @s run function jeffrey:spells/fire_shot_tech/fire_shot_explosion

# check if hit entity
execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=!player,type=!#jeffrey:not_mobs,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin,dx=0,limit=1,sort=nearest] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 as @e[limit=1,sort=nearest] run function jeffrey:spells/fire_shot_tech/fire_shot_explosion
execute at @s positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=player,gamemode=!creative,gamemode=!spectator,dx=0,limit=1,sort=nearest] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 as @e[limit=1,sort=nearest] run function jeffrey:spells/fire_shot_tech/fire_shot_explosion

# check if hit block
execute unless block ^ ^ ^1 #jeffrey:raycast_pass as @s run function jeffrey:spells/fire_shot_tech/fire_shot_explosion

# cool particles
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.01 1 normal
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.05 2 normal

# move shot
execute if score @s JeffreyGame matches ..32 run tp @s ^ ^ ^0.8 ~ ~