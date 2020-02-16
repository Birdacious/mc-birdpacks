# as @e[type=area_effect_cloud, nbt={Item:{tag:{boom:"buzzing"}}}] at @s

execute if score @s boomtimer matches 2 run particle minecraft:mycelium ~ ~0.2 ~ 0.2 0.2 0.2 0 1 force
execute if score @s boomtimer matches 2 run scoreboard players set @s boomtimer 0
scoreboard players add @s boomtimer 1