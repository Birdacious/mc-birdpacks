# as @a[scores={bowUse=1}]
# say Bow use detected, executing...

# Laser-sighted bow
execute if entity @s[nbt={SelectedItem:{tag:{lasersight:1s}}}] run function bird:gadgets/item_mods/bow/laser_sight/item_replacement/bow_to_carrotstick
execute if entity @s[nbt={SelectedItem:{tag:{lasersight:2s}}}] run function bird:gadgets/item_mods/bow/laser_sight/item_replacement/bow_to_carrotstick

#testing
function bird:gadgets/item_mods/test/bow_data/end