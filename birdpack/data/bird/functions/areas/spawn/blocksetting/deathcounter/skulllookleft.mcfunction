# Default position
execute unless entity @p[tag=deathCounterEnabled] run setblock 1347 69 31309 quartz_slab[type=top]
execute unless entity @p[tag=deathCounterEnabled] run setblock 1347 70 31309 smooth_quartz

# Eyebrow raised
execute if entity @p[x=1348,y=63,z=31310,dx=22,dy=7,dz=13] run setblock 1347 69 31309 air
execute if entity @p[x=1348,y=63,z=31310,dx=22,dy=7,dz=13] run setblock 1347 70 31309 minecraft:quartz_stairs[half=top,facing=north]
