#Level 1
tellraw @a "Mining Haste check"
#Get the custom_data "perk_slots" value and store it on the "math" scoreboard
#We do this so that we can compare the value to see if a perk can be applied to the item
#Or if all the perk slots have been used up on the item
execute store result score current_item_perk_slots math run data get entity @s equipment.offhand.components.minecraft:custom_data.perk_slots
#Check to see if the "perk_slots" on the item is either our required min amount or higher. Currerntly min amount is 1 in load.mcfunction
execute if score current_item_perk_slots math < min_required_perk_slots math run return run tellraw @s {"color":"red","text":"The tool you are holding in the off hand does not support perks, or have no more perk slots available"}

#Remove 1 from "current_item_perk_slots"
scoreboard players operation current_item_perk_slots math -= perk_slot_uses_per math

#Set custom_data.perk_slots to the update value
#Get the scoreboard value and save it on storage so that we can use it for the item_modifier
execute store result storage blob:new_perk_slots value byte 1 run scoreboard players get current_item_perk_slots math
item modify entity @s weapon.offhand blob:apply_perk_slots_data


#Remove the "current_item_perk_slots" so that no issues should appear when another player does the same thing later on/same time.
#scoreboard players reset current_item_perk_slots math


execute as @s if items entity @s weapon.mainhand minecraft:book[minecraft:custom_data~{level:1b}] as @s run function blob:mining/speed/apply_perk/level_1

#Level 2

#Level 3
