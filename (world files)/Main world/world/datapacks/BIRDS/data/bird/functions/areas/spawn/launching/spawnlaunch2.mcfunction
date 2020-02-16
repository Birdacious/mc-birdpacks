tag @e[x=1398, y=86, z=31379, distance=..1] add spawnLaunching2

execute as @p[tag=spawnLaunching2] run gamerule mobGriefing false
execute as @a[tag=spawnLaunching2] run effect give @s resistance 2 4 true
execute as @p[tag=spawnLaunching2] run weather thunder 1000000

scoreboard players add @a[tag=spawnLaunching2] launch 1

execute at @a[tag=spawnLaunching2, scores={launch=0}] run summon creeper ~-0.2 ~ ~0.2 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=10}] run summon creeper ~-0.2 ~-1 ~0.2 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=20}] run summon creeper ~-0.2 ~-0.9 ~0.2 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=30}] run summon creeper ~-0.3 ~-0.8 ~0.3 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=40}] run summon creeper ~-0.3 ~-0.7 ~0.3 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=50}] run summon creeper ~-0.4 ~-0.6 ~0.4 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=60}] run summon creeper ~-0.1 ~-1 ~0.1 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=65}] run summon creeper ~-0.1 ~-1 ~0.1 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=70}] run summon creeper ~-1 ~-1 ~1 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=85}] run summon creeper ~-0.5 ~2 ~0.5 {Fuse:0}
execute at @a[tag=spawnLaunching2, scores={launch=90}] run summon creeper ~-0.5 ~2 ~0.5 {Fuse:0}

execute as @a[tag=spawnLaunching2, scores={launch=100}] run scoreboard players set @s launch -1
execute as @a[tag=spawnLaunching2, scores={launch=-1}] run gamerule mobGriefing true
execute as @a[tag=spawnLaunching2, scores={launch=-1}] run tag @s remove spawnLaunching2