# This exists so that this area's continuous per-tick functions aren't run when they don't need to be running (i.e. when there are no players in the area).
# Should hopefully help with performance!
execute if entity @a[x=1250, dx=250, y=0, dy=250, z=31250, dz=200] run function #bird:areas/spawn/spawnplayerpresent