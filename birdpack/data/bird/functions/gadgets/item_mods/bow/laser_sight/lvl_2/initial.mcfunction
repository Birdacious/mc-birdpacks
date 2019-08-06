# as server --> as @a[scores={Rclick=1}] --> if entity @s[nbt={SelectedItem:{tag:{lasersight:2s}}}]


# Record player's hotbar slot once upon Rclick
execute store result score @s hbSlot run data get entity @s SelectedItemSlot

# Replace the carrotstick that the player just right-clicked with a bow (copied NBT)
function bird:gadgets/item_mods/bow/laser_sight/item_replacement/carrotstick_to_bow

# Tags the player to run the tick function every tick
tag @s add laserSight2