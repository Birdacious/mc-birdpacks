# as @e[type=area_effect_cloud, tag=bumblingeffector, tag=detectground] at @s



# TIMER
scoreboard players add @s boomtimer 1

# initial particles upon landing
execute if score @s boomtimer matches ..3 run function bird:gadgets/booms/bee/bumbling/effector/particles/initialparticles



# SWARM
# Chase (must be run by the entity being chased so they can limit the amount of swarms on themselves)
execute as @e[type=#minecraft:living_entity, distance=..5, sort=nearest, limit=1] at @s run function bird:gadgets/booms/bee/bumbling/effector/effects/chase

# determines if something is being chased
tag @s remove chasing
execute if entity @e[distance=..1, type=#minecraft:living_entity] run tag @s add chasing


# Particles
# when the swarm is not chasing anything
execute unless entity @s[tag=chasing] run function bird:gadgets/booms/bee/bumbling/effector/particles/standaloneswarmparticles

# when the swarm is chasing something
execute as @e[type=#minecraft:living_entity, distance=..4, sort=nearest, limit=1] at @s anchored eyes run function bird:gadgets/booms/bee/bumbling/effector/particles/swarmparticles


# Sting
# particles need to be emitted anchored at eyes,
# but the real "center" of an entity (for distance detection) is at its feet
scoreboard players add @s stingtimer 1
execute if score @s stingtimer matches 20 as @e[distance=..0.25, type=#minecraft:living_entity] run function bird:gadgets/booms/bee/bumbling/effector/effects/sting
execute if score @s stingtimer matches 20 run scoreboard players set @s stingtimer 0



# TERMINATION
function bird:gadgets/booms/bee/bumbling/effector/termination