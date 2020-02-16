# as @e[tag=frostyeffector, tag=detectground] at @s

# timer
scoreboard players add @s boomtimer 1

# particles
execute if score @s boomtimer matches 1 run function bird:gadgets/booms/cold/frosty/effector/particles/initial
function bird:gadgets/booms/cold/frosty/effector/particles/continuous
function bird:gadgets/booms/cold/frosty/effector/particles/radius

# radius
execute as @e[type=#minecraft:living_entity, distance=..4] run function bird:gadgets/booms/cold/frosty/effector/effects/coldness

# termination
function bird:gadgets/booms/cold/frosty/effector/termination