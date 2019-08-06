# as @e[tag=bumblingeffector, tag=detectground] at @s unless entity @s[tag=chasing]

# continuous particles
particle minecraft:underwater ~ ~1 ~ 0.3 0.2 0.3 0 25 force
particle minecraft:mycelium ~ ~1 ~ 0.3 0.2 0.3 0 4 force
playsound minecraft:entity.enderman.scream hostile @p ~ ~ ~ 0.1 0.4

# radius particles
function bird:gadgets/booms/bee/bumbling/effector/particles/radius