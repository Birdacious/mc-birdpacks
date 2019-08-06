# as @e[tag=bombinatingeffector, tag=detectground] at @s unless entity @s[tag=chasing]

# continuous particles
particle minecraft:underwater ~ ~1 ~ 0.4 0.3 0.4 0 40 force
particle minecraft:mycelium ~ ~1 ~ 0.4 0.3 0.4 0 7 force
playsound minecraft:entity.enderman.scream hostile @p ~ ~ ~ 0.15 0.4

# radius particles
function bird:gadgets/booms/bee/bombinating/effector/particles/radius