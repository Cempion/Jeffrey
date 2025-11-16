# find orientation of structure (1=north 2=west 3=south 4=east)
execute unless score @s JeffreyGame matches -2147483648..2147483647 if block ~10 ~ ~ reinforced_deepslate run scoreboard players set @s JeffreyGame 1
execute unless score @s JeffreyGame matches -2147483648..2147483647 if block ~ ~ ~-10 reinforced_deepslate run scoreboard players set @s JeffreyGame 2
execute unless score @s JeffreyGame matches -2147483648..2147483647 if block ~-10 ~ ~ reinforced_deepslate run scoreboard players set @s JeffreyGame 3
execute unless score @s JeffreyGame matches -2147483648..2147483647 if block ~ ~ ~10 reinforced_deepslate run scoreboard players set @s JeffreyGame 4


# show particles
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 1 positioned ~-10 ~-2.5 ~ run function jeffrey:portal/tpoverworld_particle/find_wallx
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 2 positioned ~ ~-2.5 ~-9 run function jeffrey:portal/tpoverworld_particle/find_wallz
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 3 positioned ~-9 ~-2.5 ~ run function jeffrey:portal/tpoverworld_particle/find_wallx
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 4 positioned ~ ~-2.5 ~-10 run function jeffrey:portal/tpoverworld_particle/find_wallz

scoreboard players reset RaycastDistance' JeffreyGame

# tp entity to the void
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 1 at @s positioned ~-10.5 ~-3 ~-0.5 as @e[dz=0,dy=5,dx=19,type=!marker,tag=!JustTped] in jeffrey:the_void run function jeffrey:portal/tp_from_overworld
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 2 at @s positioned ~-0.5 ~-3 ~-9.5 as @e[dz=19,dy=5,dx=0,type=!marker,tag=!JustTped] in jeffrey:the_void run function jeffrey:portal/tp_from_overworld
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 3 at @s positioned ~-9.5 ~-3 ~-0.5 as @e[dz=0,dy=5,dx=19,type=!marker,tag=!JustTped] in jeffrey:the_void run function jeffrey:portal/tp_from_overworld
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 4 at @s positioned ~-0.5 ~-3 ~-10.5 as @e[dz=19,dy=5,dx=0,type=!marker,tag=!JustTped] in jeffrey:the_void run function jeffrey:portal/tp_from_overworld

# remove JustTped tag
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 1 at @s positioned ~-10.5 ~-3 ~-0.5 as @e[distance=..30,type=!marker] unless entity @s[dz=0,dy=5,dx=19,type=!marker] run tag @s remove JustTped
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 2 at @s positioned ~-0.5 ~-3 ~-9.5 as @e[distance=..30,type=!marker] unless entity @s[dz=19,dy=5,dx=0,type=!marker] run tag @s remove JustTped
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 3 at @s positioned ~-9.5 ~-3 ~-0.5 as @e[distance=..30,type=!marker] unless entity @s[dz=0,dy=5,dx=19,type=!marker] run tag @s remove JustTped
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 4 at @s positioned ~-0.5 ~-3 ~-10.5 as @e[distance=..30,type=!marker] unless entity @s[dz=19,dy=5,dx=0,type=!marker] run tag @s remove JustTped

# detect if all reinforced deepslate is still there
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 1 at @s positioned ~-11 ~-3.5 ~ store result score ReinforcedDeepslate JeffreyGame run clone ~ ~ ~ ~21 ~7 ~ ~ ~ ~ filtered #jeffrey:portal_blocks force
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 2 at @s positioned ~ ~-3.5 ~-10 store result score ReinforcedDeepslate JeffreyGame run clone ~ ~ ~ ~ ~7 ~21 ~ ~ ~ filtered #jeffrey:portal_blocks force
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 3 at @s positioned ~-10 ~-3.5 ~ store result score ReinforcedDeepslate JeffreyGame run clone ~ ~ ~ ~21 ~7 ~ ~ ~ ~ filtered #jeffrey:portal_blocks force
execute as @s[tag=TPoverworld] if score @s JeffreyGame matches 4 at @s positioned ~ ~-3.5 ~-11 store result score ReinforcedDeepslate JeffreyGame run clone ~ ~ ~ ~ ~7 ~21 ~ ~ ~ filtered #jeffrey:portal_blocks force

execute as @s[tag=TPoverworld] if score ReinforcedDeepslate JeffreyGame matches -2147483648..2147483647 unless score ReinforcedDeepslate JeffreyGame matches 56 run kill @s

scoreboard players reset ReinforcedDeepslate JeffreyGame
