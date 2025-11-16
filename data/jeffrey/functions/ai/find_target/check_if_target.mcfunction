
effect give @s dolphins_grace 1 0 false

execute as @e[limit=1,sort=nearest] if predicate jeffrey:jeffrey_ai/checkiftarget run tag @e[type=!#jeffrey:not_mobs,distance=..32,nbt={ActiveEffects:[{Id:30,Amplifier:0b}]},limit=1,sort=nearest] add Target

effect clear @s dolphins_grace
