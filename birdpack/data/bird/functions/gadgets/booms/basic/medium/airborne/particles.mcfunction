# as @e[nbt={Item:{tag:{boom:"medium"}}}] at @s

execute if score @s boomtimer matches 2 run particle minecraft:lava ~ ~0.2 ~ 0 0 0 0 1 force
execute if score @s boomtimer matches 2 run scoreboard players set @s boomtimer 0
scoreboard players add @s boomtimer 1