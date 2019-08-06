# Enable death counter
execute if block 1346 70 31310 minecraft:oak_button[powered=true] run function bird:areas/spawn/blocksetting/deathcounter/skullenable

# Disable death counter
execute if block 1346 70 31310 minecraft:spruce_button[powered=true] run function bird:areas/spawn/blocksetting/deathcounter/skulldisable