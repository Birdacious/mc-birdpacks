# Initialize armorstand on thrown Smoke Boom, ensures that a regular snowball does not become a Smoke Boom in midair
execute at @a[tag=holdingSmokeBoom] run tag @e[type=minecraft:snowball, distance=..2] add notCheatySmoke
execute as @a[tag=holdingSmokeBoom] run execute as @e[type=snowball, tag=notCheatySmoke, tag=!projSmokeBoom,limit=1] at @s run summon armor_stand ~ ~ ~ {CustomName:"\"SmokeDetector\"",Invisible:true}
execute as @a[tag=holdingSmokeBoom] run tag @e[type=snowball, tag=!projSmokeBoom, tag=notCheatySmoke, limit=1] add projSmokeBoom

# TEST IF HOLDING
execute as @a run tag @s remove holdingSmokeBoom
execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{display:{Name:"{\"bold\":true,\"italic\":false,\"color\":\"dark_gray\",\"text\":\"Smoke Boom\"}"}}}}] run tag @s add holdingSmokeBoom

# Particles as it flies
execute at @e[tag=projSmokeBoom] run particle smoke ~ ~0.2 ~ 0 0 0 0.05 2 force

# Boom tp's armorstand SmokeDetector to it continuously, and removes its detectGround tag continuously
# When Boom breaks on ground, now no one is around to remove SmokeDetector's detectGround tag, so it gets its detectGround tag
execute at @e[tag=projSmokeBoom] run teleport @e[name=SmokeDetector, distance=..2, limit=1] ~ ~ ~
tag @e[name=SmokeDetector] add detectGround
execute at @e[type=minecraft:snowball] run tag @e[name=SmokeDetector, distance=..2, limit=1] remove detectGround

# When SmokeDetector finally gets to keep its detectGround tag (so, the snowball must have broken), use the SmokeDetector as center for effects, then kill the SmokeDetector
execute at @e[name=SmokeDetector, tag=detectGround] run playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 0.02 0.1
execute at @e[name=SmokeDetector, tag=detectGround] run particle cloud ~ ~0.5 ~ 2 2 2 0.1 40 force

execute at @e[name=SmokeDetector, tag=detectGround] run effect give @e[distance=..4] blindness 3 0 true
execute at @e[name=SmokeDetector, tag=detectGround] run effect give @e[distance=..4] invisibility 1 0 true
execute at @e[name=SmokeDetector, tag=detectGround] run effect give @e[distance=..4] night_vision 1 0 true

execute at @e[name=SmokeDetector, tag=detectGround] run kill @e[tag=projectile, distance=..8]
# execute at @e[name=SmokeDetector, tag=detectGround] run kill @e[type=armor_stand, distance=1..8]
execute at @e[name=SmokeDetector, tag=detectGround] run execute as @e[distance=..4] run data merge entity @s {Attributes:[{Name:"generic.followRange",Base:0.0}]}

# Return follow range to normal and kill the armor stand
execute as @e[name=SmokeDetector, tag=detectGround] run scoreboard players add @s timeSmoke 1
execute at @e[scores={timeSmoke=200..}] run execute as @e[type=!zombie, distance=..10] run data merge entity @s {Attributes:[{Name:"generic.followRange",Base:16.0}]}
execute at @e[scores={timeSmoke=200..}] run execute as @e[type=zombie, distance=..10] run data merge entity @s {Attributes:[{Name:"generic.followRange",Base:40.0}]}
execute as @e[scores={timeSmoke=200..}] run kill @s