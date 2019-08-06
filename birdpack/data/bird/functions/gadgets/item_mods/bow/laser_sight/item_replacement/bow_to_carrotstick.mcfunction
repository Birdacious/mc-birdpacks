# as @a[scores={bowUse=1}] --> if entity @s[nbt={SelectedItem:{tag:{lasersight:1s}}}]

# This needs to exist in case the player switches hotbar slots while drawing the bow
execute if score @s hbSlot matches 0 run loot replace entity @s hotbar.0 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 1 run loot replace entity @s hotbar.1 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 2 run loot replace entity @s hotbar.2 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 3 run loot replace entity @s hotbar.3 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 4 run loot replace entity @s hotbar.4 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 5 run loot replace entity @s hotbar.5 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 6 run loot replace entity @s hotbar.6 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 7 run loot replace entity @s hotbar.7 loot bird:laser_sight/bow_to_carrotstick
execute if score @s hbSlot matches 8 run loot replace entity @s hotbar.8 loot bird:laser_sight/bow_to_carrotstick