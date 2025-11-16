# give jeffrey a cooldown score
execute unless score @s JeffreySpellsTimer matches -2147483648..2147483647 run scoreboard players set @s JeffreySpellsTimer 0

# count jeffrey's
scoreboard players add Jeffrey's JeffreyGame 1


# find combined health of all jeffreys
# calculate combines health of all jeffreys
execute store result score @s JeffreyHealth run data get entity @s Health
scoreboard players operation Jeffrey's_Health JeffreyHealth += @s JeffreyHealth

# find combined maxhealth of all jeffreys
# calculate combines maxhealth of all jeffreys
execute store result score @s JeffreyMaxHealth run attribute @s generic.max_health get
scoreboard players operation Jeffrey's_MaxHealth JeffreyMaxHealth += @s JeffreyMaxHealth

# calculate "phases" for everyone
scoreboard players operation @s JeffreyPhase3 = @s JeffreyMaxHealth
scoreboard players operation @s JeffreyPhase3 /= 3' JeffreyPhase3
scoreboard players operation @s JeffreyPhase2 = @s JeffreyPhase3
scoreboard players operation @s JeffreyPhase2 *= 2' JeffreyPhase2

# cast spells
execute as @s run function jeffrey:spells/cast_spells

# handle jeffrey AI
execute at @s if score @s JeffreyHealth > @s JeffreyPhase2 run function jeffrey:ai/jeffrey_phases/1st_phase
execute at @s if score @s JeffreyHealth <= @s JeffreyPhase2 unless score @s JeffreyHealth <= @s JeffreyPhase3 run function jeffrey:ai/jeffrey_phases/2nd_phase
execute at @s if score @s JeffreyHealth <= @s JeffreyPhase3 run function jeffrey:ai/jeffrey_phases/3rd_phase

# make sure jeffrey's have armour
execute as @s[type=zombie] run data merge entity @s {ArmorItems:[{id:netherite_boots,tag:{Enchantments:[{id:soul_speed,lvl:3},{id:protection,lvl:4},{id:feather_falling,lvl:4},{id:depth_strider,lvl:3},{id:unbreaking,lvl:1000},{id:mending,lvl:1}]},Count:1},{id:netherite_chestplate,tag:{Enchantments:[{id:protection,lvl:4},{id:unbreaking,lvl:1000},{id:mending,lvl:1}]},Count:1},{id:netherite_chestplate,tag:{Enchantments:[{id:protection,lvl:4},{id:unbreaking,lvl:1000},{id:mending,lvl:1}]},Count:1},{id:netherite_helmet,tag:{Enchantments:[{id:protection,lvl:4},{id:respiration,lvl:3},{id:aqua_affinity,lvl:1},{id:unbreaking,lvl:1000},{id:mending,lvl:1}]},Count:1}]}