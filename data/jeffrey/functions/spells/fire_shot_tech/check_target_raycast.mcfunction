# 10 distance = 2 block so 160 distance = 32 blocks

# count up distance
scoreboard players add RaycastDistance' JeffreyGame 1

# detect if entity was hit
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[tag=!Raycasting,type=!player,type=!#jeffrey:not_mobs,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin,dx=0,limit=1,sort=nearest] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run tag @s add FStarget
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[tag=!Raycasting,type=player,gamemode=!creative,gamemode=!spectator,dx=0,limit=1,sort=nearest] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 run tag @s add FStarget
execute if entity @e[tag=FStarget] run scoreboard players set RaycastDistance' JeffreyGame 161
# detect if block was hit
execute positioned ~ ~ ~ if score RaycastDistance' JeffreyGame matches ..160 unless block ~ ~ ~ #jeffrey:raycast_pass run summon armor_stand ~ ~ ~ {Tags:["FStarget"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute positioned ~ ~ ~ if score RaycastDistance' JeffreyGame matches ..160 unless block ~ ~ ~ #jeffrey:raycast_pass run scoreboard players set RaycastDistance' JeffreyGame 161
# place target when max distance is reached
execute positioned ~ ~ ~ if score RaycastDistance' JeffreyGame matches 161 run summon armor_stand ~ ~ ~ {Tags:["FStarget"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}

# repeat this function untill distance is reached
execute if score RaycastDistance' JeffreyGame matches ..160 positioned ^ ^ ^0.2 rotated ~ ~ run function jeffrey:spells/fire_shot_tech/check_target_raycast
