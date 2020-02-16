# as @e[tag=buzzingeffector, tag=detectground] at @s unless entity @s[tag=chasing]

# continuous particles
particle minecraft:underwater ~ ~1 ~ 0.25 0.2 0.25 0 15 force
particle minecraft:mycelium ~ ~1 ~ 0.25 0.2 0.25 0 1 force
playsound minecraft:entity.enderman.scream hostile @p ~ ~ ~ 0.05 0.4

# radius particles
function bird:gadgets/booms/bee/buzzing/effector/particles/radius