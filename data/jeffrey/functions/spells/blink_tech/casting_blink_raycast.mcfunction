
# 10 distance = 2 block so 20 distance = 4 blocks

# count up distance
scoreboard players add RaycastDistance' JeffreyGame 1

# show cool particle
execute if block ~ ~ ~ #jeffrey:raycast_pass run particle soul_fire_flame ~ ~ ~ 0 0 0 0.01 1 normal
# damage entities in beam
execute if block ~ ~ ~ #jeffrey:raycast_pass positioned ~-0.05 ~-0.05 ~-0.05 as @e[dx=0,type=!skeleton,type=!zombie,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!husk,type=!phantom,type=!skeleton_horse,type=!stray,type=!wither,type=!wither_skeleton,type=!zoglin] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.9 ~0.9 ~0.9 run effect give @s instant_damage 1 0 false

# tp caster if not player
execute as @s[type=!player] anchored feet positioned ~ ~ ~ align y if block ~ ~ ~ #jeffrey:raycast_pass run function jeffrey:spells/blink_tech/align_xminus
# tp caster if player
execute as @s[type=player] anchored feet positioned ~ ~ ~ align y if block ~ ~ ~ #jeffrey:raycast_pass unless block ~ ~-1 ~ #jeffrey:raycast_pass run function jeffrey:spells/blink_tech/align_xminus
execute as @s[type=player] anchored feet positioned ~ ~ ~ align y if block ~ ~ ~ #jeffrey:raycast_pass if block ~ ~-1 ~ #jeffrey:raycast_pass positioned ~ ~-1 ~ run function jeffrey:spells/blink_tech/align_xminus

# repeat this function untill distance is reached
execute if score RaycastDistance' JeffreyGame matches ..20 positioned ^ ^ ^0.2 rotated ~ ~ run function jeffrey:spells/blink_tech/casting_blink_raycast






