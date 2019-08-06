# as server --> as @a[scores={Rclick=1}]
#say Right click detected, executing...

# Laser-sighted bow
execute if entity @s[nbt={SelectedItem:{tag:{lasersight:1s}}}] run function bird:gadgets/item_mods/bow/laser_sight/lvl_1/initial
execute if entity @s[nbt={SelectedItem:{tag:{lasersight:2s}}}] run function bird:gadgets/item_mods/bow/laser_sight/lvl_2/initial

#testing
function bird:gadgets/item_mods/test/bow_data/start