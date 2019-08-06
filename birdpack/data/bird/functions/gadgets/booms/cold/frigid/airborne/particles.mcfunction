# as @e[nbt={Item:{tag:{boom:"frigid"}}}] at @s

execute if score @s boomtimer matches 2 run particle firework ~ ~0.2 ~ 0 0 0 0.05 1 force
execute if score @s boomtimer matches 2 run scoreboard players set @s boomtimer 0
scoreboard players add @s boomtimer 1