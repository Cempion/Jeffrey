# reset scoreboards  so can calculate value agian
scoreboard players reset Jeffrey's JeffreyGame
scoreboard players reset Jeffrey's_Health JeffreyHealth
scoreboard players reset Jeffrey's_MaxHealth JeffreyMaxHealth

# handle cooldown
execute as @a unless score @s JeffreySpellsTimer matches -2147483648..2147483647 run scoreboard players set @s JeffreySpellsTimer 0
execute as @e if score @s JeffreySpellsTimer matches 1.. run scoreboard players remove @s JeffreySpellsTimer 1


# run jeffrey code for all jeffrey's
execute as @e[tag=Jeffrey] run function jeffrey:jeffrey

# put combined health in bossbar
execute store result bossbar minecraft:jeffrey value run scoreboard players get Jeffrey's_Health JeffreyHealth

# put combined maxhealth to max bossbar
execute store result bossbar minecraft:jeffrey max run scoreboard players get Jeffrey's_MaxHealth JeffreyMaxHealth

# rename bossbar
execute unless score Jeffrey's JeffreyGame matches 2.. run bossbar set minecraft:jeffrey name ["",{"text":"b","bold":true,"obfuscated":true,"color":"aqua"},{"text":" Jeffrey ","bold":true,"color":"aqua"},{"text":"b","bold":true,"obfuscated":true,"color":"aqua"},{"text":"   [","bold":true,"color":"aqua"},{"score":{"name":"Jeffrey's_Health","objective":"JeffreyHealth"},"bold":true,"color":"red"},{"text":"/","bold":true,"color":"aqua"},{"score":{"name":"Jeffrey's_MaxHealth","objective":"JeffreyMaxHealth"},"bold":true,"color":"red"},{"text":"]","bold":true,"color":"aqua"}]
execute if score Jeffrey's JeffreyGame matches 2.. run bossbar set minecraft:jeffrey name ["",{"text":"b","bold":true,"obfuscated":true,"color":"aqua"},{"text":" Jeffrey's ","bold":true,"color":"aqua"},{"text":"b ","bold":true,"obfuscated":true,"color":"aqua"},{"score":{"name":"Jeffrey's","objective":"JeffreyGame"},"bold":true,"color":"aqua"},{"text":"   [","bold":true,"color":"aqua"},{"score":{"name":"Jeffrey's_Health","objective":"JeffreyHealth"},"bold":true,"color":"red"},{"text":"/","bold":true,"color":"aqua"},{"score":{"name":"Jeffrey's_MaxHealth","objective":"JeffreyMaxHealth"},"bold":true,"color":"red"},{"text":"]","bold":true,"color":"aqua"}]

# detect how many jeffreys are near each player
execute as @a at @s store result score @s JeffreyGame if entity @e[tag=Jeffrey,distance=..32]
# add players to bossbar if nearby a jeffrey
bossbar set minecraft:jeffrey players @a[scores={JeffreyGame=1..}]

# cast spells
execute as @a run function jeffrey:spells/cast_spells

# deal with TPdimension system thingy
execute as @e[tag=TPoverworld] at @s run function jeffrey:portal/tpoverworld

# jeffrey summon location tag is SL
