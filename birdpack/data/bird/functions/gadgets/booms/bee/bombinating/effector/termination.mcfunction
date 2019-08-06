# as @e[tag=bombinatingeffector, tag=detectground] at @s

execute if score @s boomtimer matches 600 run kill @s
execute if block ~ ~ ~ minecraft:water run kill @s