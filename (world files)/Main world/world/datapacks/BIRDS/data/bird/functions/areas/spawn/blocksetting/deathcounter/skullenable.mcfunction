tag @a add deathCounterEnabled
scoreboard objectives add Deathcounter deathCount
scoreboard objectives setdisplay list Deathcounter 
setblock 1346 70 31310 spruce_button[facing=south]
tellraw @a ["",{"text":"(Death counter enabled! Press tab!","color":"dark_gray"},{"text":" <3","color":"light_purple"},{"text":")","color":"dark_gray"}]

setblock 1347 69 31309 air
setblock 1345 69 31309 air
setblock 1345 70 31309 minecraft:quartz_stairs[half=top,facing=north]
setblock 1347 70 31309 minecraft:quartz_stairs[half=top,facing=north]
setblock 1348 68 31309 pink_wool
setblock 1344 68 31309 pink_wool

setblock 1347 68 31310 poppy
setblock 1344 66 31311 pink_tulip
setblock 1349 66 31310 lilac[half=lower]
setblock 1349 67 31310 lilac[half=upper]