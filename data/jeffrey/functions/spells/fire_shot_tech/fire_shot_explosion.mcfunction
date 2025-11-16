# align with blocks

# particles
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 20 force
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 40 normal

execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.01 40 force
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.01 80 normal

# play sound
execute at @s run playsound minecraft:block.end_gateway.spawn ambient @a[distance=..16] ~ ~ ~ 1 1.5
execute at @s run playsound minecraft:block.end_gateway.spawn ambient @a[distance=16..32] ~ ~ ~ 1 1.5 0.1

# deal damage
execute at @s positioned ~ ~-1 ~ as @e[distance= 0.0001..1.5,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin] run effect give @s instant_damage 1 2 true

# remove shot
kill @s[type=armor_stand]