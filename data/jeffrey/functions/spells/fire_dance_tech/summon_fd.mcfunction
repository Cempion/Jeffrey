# find summon targets
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..32] run tag @s add FDsummon
execute as @e[distance=..32,type=!player,type=!#jeffrey:not_mobs,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin] run tag @s add FDsummon

# summon FD
execute if entity @e[tag=FDsummon] run summon armor_stand ^8 ^ ^ {Tags:["FD","FDcurrent"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute if entity @e[tag=FDsummon] run summon armor_stand ^-8 ^ ^ {Tags:["FD","FDcurrent"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @e[tag=FDsummon,distance=1..32,limit=1,sort=random] at @s run summon armor_stand ~8 ~ ~ {Tags:["FD","FDcurrent"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @e[tag=FDsummon,distance=1..32,limit=1,sort=random] at @s run summon armor_stand ~-8 ~ ~ {Tags:["FD","FDcurrent"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @e[tag=FDsummon,distance=1..32,limit=1,sort=random] at @s run summon armor_stand ~ ~ ~8 {Tags:["FD","FDcurrent"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}
execute as @e[tag=FDsummon,distance=1..32,limit=1,sort=random] at @s run summon armor_stand ~ ~ ~-8 {Tags:["FD","FDcurrent"],Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b}

# clear FDsummon tag
execute as @e[tag=FDsummon] run tag @s remove FDsummon