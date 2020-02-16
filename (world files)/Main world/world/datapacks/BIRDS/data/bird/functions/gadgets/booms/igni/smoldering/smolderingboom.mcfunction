# Initialize armorstand on thrown Smoldering Boom, ensures that a regular snowball does not become a Smoldering Boom in midair
execute at @a[tag=holdingSmolderingBoom] run tag @e[type=minecraft:snowball, distance=..2] add notCheatySmoldering
execute as @a[tag=holdingSmolderingBoom] run execute as @e[type=snowball, tag=notCheatySmoldering, tag=!projSmolderingBoom,limit=1] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"SmolderingDetector\"", Marker:true, NoGravity:true, Invisible:true}
execute as @a[tag=holdingSmolderingBoom] run tag @e[type=snowball, tag=!projSmolderingBoom, tag=notCheatySmoldering, limit=1] add projSmolderingBoom

# TEST IF HOLDING
execute as @a run tag @s remove holdingSmolderingBoom
execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"{\"italic\":false,\"color\":\"red\",\"text\":\"Smoldering Boom\"}"}}}}] run tag @s add holdingSmolderingBoom

# PARTICLES
execute at @e[tag=projSmolderingBoom] run particle flame ~ ~0.2 ~ 0 0 0 0.05 1 force

# IN AIR
# Boom tp's armorstand SmolderingDetector to it continuously, and removes its detectGround tag continuously
# When Boom breaks on ground, now no one is around to remove SmolderingDetector's detectGround tag, so it gets its detectGround tag
execute at @e[tag=projSmolderingBoom] run teleport @e[name=SmolderingDetector, distance=..2, limit=1] ~ ~ ~
tag @e[name=SmolderingDetector] add detectGround
execute at @e[type=minecraft:snowball] run tag @e[name=SmolderingDetector, distance=..2, limit=1] remove detectGround

# *AFTER LANDING*
# When SmolderingDetector finally gets to keep its detectGround tag (so, the snowball must have broken), use the SmolderingDetector as center for effects, then kill the SmolderingDetector
# The reason for the small_fireballs being passengers on an area_effect_cloud is to be able to spawn multiple fireballs in 1 tick
# Summons (4) Fireball per tick, for {5} ticks: (20) fireballs total
execute at @e[name=SmolderingDetector, tag=detectGround] run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:"small_fireball",direction:[0.0,0.0,0.0],Tags:[incendiary]}, {id:"small_fireball",direction:[0.0,0.0,0.0],Tags:[incendiary]}, {id:"small_fireball",direction:[0.0,0.0,0.0],Tags:[incendiary]}, {id:"small_fireball",direction:[0.0,0.0,0.0],Tags:[incendiary]}]}
execute at @e[name=SmolderingDetector, tag=detectGround] run spreadplayers ~ ~ 0.0 3.0 false @e[tag=incendiary, distance=0]

# Teleports small_fireballs to proper y level after they've been spread-player'd (so it still works in roofed areas), then adds 1.1 to their y level so they have time to gather speed
# and then gives them the downward momentum to crash into ground and cause fire
# The reason for the timeSmoldering is to delay 1 tick for the area_effect_cloud to despawn, freeing its passenger small_fireballs
execute as @e[tag=incendiary, scores={timeSmoldering=1}] at @s run execute store result entity @s Pos[1] double 1 run data get entity @e[name=SmolderingDetector, tag=detectGround, sort=nearest, limit=1] Pos[1] 1
execute as @e[tag=incendiary, scores={timeSmoldering=1}] at @s run teleport ~ ~1.1 ~
execute as @e[tag=incendiary, scores={timeSmoldering=1}] run data merge entity @s {direction:[0.0,-1.0,0.0],power:[0.0,-1.0,0.0]}

execute as @e[tag=incendiary] run scoreboard players add @s timeSmoldering 1

# The life of the SmolderingDetector (armor_stand) determines how many sets of fireballs
execute as @e[name=SmolderingDetector, tag=detectGround] run scoreboard players add @s timeSmoldering 1
execute as @e[name=SmolderingDetector, tag=detectGround, scores={timeSmoldering=5}] run kill @s