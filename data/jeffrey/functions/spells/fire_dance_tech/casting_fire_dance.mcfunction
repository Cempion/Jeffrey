# countdown jeffreygame
scoreboard players remove @s JeffreyGame 1

# run when charging
execute if score @s JeffreyGame matches 120.. at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 1 0.5 0.01 1 force
execute if score @s JeffreyGame matches 120.. at @s run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 1 0.5 0.01 4 normal

# run while casting
execute at @s if score @s JeffreyGame matches ..119 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0.5 0 0.1 2 force
execute at @s if score @s JeffreyGame matches ..119 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0 0.5 0 0.1 8 normal

execute at @s if score @s JeffreyGame matches ..119 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 1 0.5 0.01 3 force
execute at @s if score @s JeffreyGame matches ..119 run particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.5 1 0.5 0.01 12 normal
execute at @s if score @s JeffreyGame matches ..119 if predicate jeffrey:playsound run playsound minecraft:entity.ender_dragon.shoot ambient @a ~ ~ ~ 0.7 0.7
execute at @s if score @s JeffreyGame matches ..119 if predicate jeffrey:playsound run playsound minecraft:entity.generic.burn ambient @a ~ ~ ~ 0.7 1

execute at @s if score @s JeffreyGame matches ..119 as @e[distance= ..2,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin] run effect give @s instant_damage 1 1 true

# kill stuff jeffrey can sit in
execute at @s if score @s JeffreyGame matches ..119 run kill @e[type=#jeffrey:sitable,distance=..2]

# tp towards nearest entity
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..16,limit=1,sort=nearest] run tag @s add FDtarget 
execute as @e[distance=..16,type=!player,type=!#jeffrey:not_mobs,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin,limit=1,sort=nearest] run tag @s add FDtarget
tp @s ~ ~ ~ facing entity @e[tag=FDtarget,limit=1,sort=nearest] feet
execute if entity @e[tag=FDtarget] run tp @s ^ ^ ^0.05
execute as @e[tag=FDtarget] run tag @s remove FDtarget

# kill self when countdown 0
execute if score @s JeffreyGame matches ..0 run kill @s