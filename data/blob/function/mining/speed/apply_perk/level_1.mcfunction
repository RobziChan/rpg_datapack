item modify entity @s weapon.offhand {"function":"minecraft:set_lore","entity":"this","lore":[{"text":"  +2 breaking blocks","color":"blue",type:"text"}],mode:"append"}
say item modified


#item replace entity @s weapon.mainhand with air
playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 10 1 1
execute at @s run particle minecraft:glow ~ ~1 ~ 0.5 1 0.5 0 50

#TODO
#When applying the attribute modifier we need to check if it already have the same attribute already applied, otherwise it would be overwritten
#it gets overwritten even when "replace:false" is set. 

#Attributes are stored as an array under "SelectedItem.components.minecraft:attribute_modifiers" which makes it difficult to get
#Probably easiest to store it under custom_data so it is easier to fetch and store for calculations later on.
#Using the following command gets the players block break speed attribute, this changes depending on the item they hold"/execute as @s store result score @s math run attribute @s minecraft:block_break_speed get"
#we need to remove 1 from this value as the player always have 1 when nothing is in their hand, this is also added when they are holding items
#if they are holding an item that would change the block_break_speed attribute.
#Using the "/attribute get" command does not work, well for this case. Some items already have things affecting this
#causing the value to not match always and can depend on other factors.
#Instead we will just use custom_data as we already have a way of using that with "/data storage" and scoreboard for math.
#If there ever is a way for "SelectedItem.components.minecraft:attribute_modifiers" to not be an array, using that is better/easier/more logical.

#execute store result score current_item_attribute_amount math run data get entity @s equipment.offhand.components.minecraft:custom_data.perk_slots



item modify entity @s weapon.offhand {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:block_break_speed",id:"minecraft:",amount:2,operation:"add_value",slot:"mainhand"}],replace:false}
