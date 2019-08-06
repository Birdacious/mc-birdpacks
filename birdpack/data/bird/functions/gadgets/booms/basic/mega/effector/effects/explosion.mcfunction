# as @e[tag=megaeffector, tag=detectground] at @s


# timer
scoreboard players add @s boomtimer 1

# source of explosion
execute if score @s boomtimer matches 1 run summon minecraft:creeper ~ ~ ~ {Fuse:0s, ExplosionRadius:4, Tags:["antigrief"]}

# extra particles
execute if score @s boomtimer matches 1 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 3 force
execute if score @s boomtimer matches 1 run particle minecraft:lava ~ ~2 ~ 2 0.5 2 0 30 force

# turn off mobGriefing while the creeper exists
execute if score @s boomtimer matches 2 run gamerule mobGriefing true
execute if entity @e[tag=antigrief] run gamerule mobGriefing false
