# as @e[tag=mediumeffector, tag=detectground] at @s


# timer
scoreboard players add @s boomtimer 1

# source of explosion
execute if score @s boomtimer matches 1 run summon minecraft:creeper ~ ~ ~ {Fuse:0s, ExplosionRadius:2, Tags:["antigrief"]}

# turn off mobGriefing while the creeper exists
execute if score @s boomtimer matches 2 run gamerule mobGriefing true
execute if entity @e[tag=antigrief] run gamerule mobGriefing false
