# as @e[tag=frigideffector, tag=detectground] at @s

# timer
scoreboard players add @s boomtimer 1

# particles
execute if score @s boomtimer matches 1 run function bird:gadgets/booms/cold/frigid/effector/particles/initial
function bird:gadgets/booms/cold/frigid/effector/particles/continuous
function bird:gadgets/booms/cold/frigid/effector/particles/radius

# radius
execute as @e[type=#minecraft:living_entity, distance=..5] run function bird:gadgets/booms/cold/frigid/effector/effects/coldness

# termination
function bird:gadgets/booms/cold/frigid/effector/termination