
scoreboard players add RaycastDistance' JeffreyGame 1
execute unless block ~ ~ ~1 #jeffrey:portal_blocks if score RaycastDistance' JeffreyGame matches ..1000 positioned ~ ~ ~1 run function jeffrey:portal/tpoverworld_particle/find_wallz
execute if score RaycastDistance' JeffreyGame matches ..1000 run function jeffrey:portal/tpoverworld_particle/find_roofz