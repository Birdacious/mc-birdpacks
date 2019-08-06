tag @a remove deathCounterEnabled
scoreboard objectives remove Deathcounter
setblock 1346 70 31310 oak_button[facing=south]
tellraw @a ["",{"text":"(Death counter disabled.","color":"dark_gray"},{"text":" </3","color":"dark_red"},{"text":")","color":"dark_gray"}]

setblock 1344 68 31309 minecraft:quartz_slab[type=top]
setblock 1348 68 31309 minecraft:quartz_slab[type=top]

# Remove flowers :(
setblock 1347 68 31310 air
setblock 1344 66 31311 air
setblock 1349 66 31310 air
setblock 1349 67 31310 air