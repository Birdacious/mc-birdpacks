#Termination if the player
#   looses an arrow
execute if score @s bowUse matches 1 run function bird:gadgets/item_mods/bow/laser_sight/termination/bow_used
#   or switches their hotbar slot away from the bow <><><><><><><><><><><><><><><><><
execute store result score @s bird.temp run data get entity @s SelectedItemSlot
execute unless score @s bird.temp = @s hbSlot run function bird:gadgets/item_mods/bow/laser_sight/termination/switched_slot
#   or drops the bow <><><><><><><><><><><><
execute if score @s bird.temp = @s hbSlot unless entity @s[nbt={SelectedItem:{tag:{lasersight:1s}}}] run function bird:gadgets/item_mods/bow/laser_sight/termination/dropped_bow
#   or dies x_x <><>><><><><>

#No way to detect if the player releases the bow before the minimum 3 ticks. In that case, this will not terminate. Oh well ¯\_(ツ)_/¯. Nothing breaks at least.