# as @e[nbt={Item:{tag:{boom:"mini"}}}] at @s

execute if score @s boomtimer matches 4 run particle lava ~ ~0.2 ~ 0 0 0 0 1 force
execute if score @s boomtimer matches 4 run scoreboard players set @s boomtimer 0
scoreboard players add @s boomtimer 1