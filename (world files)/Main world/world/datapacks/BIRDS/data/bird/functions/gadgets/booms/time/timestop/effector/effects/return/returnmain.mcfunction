# as @e[tag=timestopeffector, tag=detectground] at @s if score @s boomtimer matches 400 --> as @e[tag=datastored, distance=..5.5]


# motion
function bird:gadgets/booms/time/timestop/effector/effects/return/motion

# fuse
function bird:gadgets/booms/time/timestop/effector/effects/return/fuse

# potion effects

# AI
data merge entity @s {NoAI:0b}

# timestopper termination
function bird:gadgets/booms/time/timestop/effector/effects/return/timestoppertermination

# TAG
tag @s remove datastored