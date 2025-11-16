
scoreboard players add RaycastDistance' JeffreyGame 1
execute unless block ~ ~1 ~ #jeffrey:portal_blocks if score RaycastDistance' JeffreyGame matches ..1000 positioned ~ ~1 ~ run function jeffrey:portal/tpoverworld_particle/find_roofz
particle soul_fire_flame ~ ~ ~ 0 0.3 0.3 0.01 1 force @a[tag=!JustTped]
