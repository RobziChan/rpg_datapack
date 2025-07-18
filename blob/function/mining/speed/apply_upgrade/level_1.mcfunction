item modify entity @s weapon.offhand {"function":"minecraft:set_lore","entity":"this","lore":[{"text":"  +2 block break speed","color":"green","italic":false,type:"text"}],mode:"append"}

#When applying the attribute modifier we need to check if it already have the same attribute already applied, otherwise it would be overwritten
#it gets overwritten even when "replace:false" is set. 

#Attributes are stored as an array under "SelectedItem.components.minecraft:attribute_modifiers" which makes it difficult to get
#Probably easiest to store it under custom_data so it is easier to fetch and store for calculations later on.
#Using the following command gets the players block break speed attribute, this changes depending on the item they hold "/execute as @s store result score @s math run attribute @s minecraft:block_break_speed get"
#we need to remove 1 from this value as the player always have 1 when nothing is in their hand, this is also added when they are holding items
#if they are holding an item that would change the block_break_speed attribute.
#Using the "/attribute get" command does not work well for this case. Some items already have things affecting this
#causing the value to not match always and can depend on other factors.
#Instead we will just use custom_data as we already have a way of using that with "/data storage" and scoreboard for math.
#If there ever is a way for "SelectedItem.components.minecraft:attribute_modifiers" to not be an array, using that is better/easier/more logical.

#If the score is 0 then the item does not have this attribute
execute store result score current_item_attribute_block_break_speed math run data get entity @s equipment.offhand.components.minecraft:custom_data.attributes_list.block_break_speed

#The amount we want to add onto the attribute
scoreboard players set attribute_value math 2

#Add the current items attribute value and the new one we are adding on.
scoreboard players operation current_item_attribute_block_break_speed math += attribute_value math

#Get the scoreboard value and save it in storage so that we can use it for the item_modifier
execute store result storage blob:new_attribute value byte 1 run scoreboard players get current_item_attribute_block_break_speed math


#Set attribute of block_break_speed to the updated value.
#This will not replace any other attribute modifier, it will however replace any current modifier with the same name, aka block_break_speed
item modify entity @s weapon.offhand {"function":"minecraft:set_attributes","modifiers":[{"attribute":"minecraft:block_break_speed",id:"minecraft:","amount":{"type":"minecraft:storage","storage":"blob:new_attribute","path":"value"},"operation":"add_value","slot":"mainhand"}],"replace":false}

#Set custom_data of the attribute "block_break_speed" to match the new value
item modify entity @s weapon.offhand {"function":"minecraft:copy_custom_data","source":{"type":"minecraft:storage","source":"blob:new_attribute"},"ops":[{"op":"replace","source":"value","target":"attributes_list.block_break_speed"}]}


#Clean up the scoreboard
scoreboard players reset current_item_attribute_block_break_speed math
scoreboard players reset attribute_value math


item replace entity @s weapon.mainhand with air
playsound minecraft:block.amethyst_block.hit player @s ~ ~ ~ 10 1 1
execute at @s run particle minecraft:glow ~ ~1 ~ 0.5 1 0.5 0 50

say Upgrade applied to item!