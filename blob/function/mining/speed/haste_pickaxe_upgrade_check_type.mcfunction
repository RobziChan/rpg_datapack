tellraw @a "haste_pickaxe_upgrade_check_type"
#Get the custom_data "upgrade_slots" value and store it on the "math" scoreboard
#We do this so that we can compare the value to see if a upgrade can be applied to the item
#Or if all the upgrades slots have been used up on the item
execute store result score current_item_upgrade_slots math run data get entity @s equipment.offhand.components.minecraft:custom_data.upgrade_slots
#Check to see if the "upgrade_slots" on the item is either our required min amount or higher. Currerntly min amount is 1 in load.mcfunction
execute if score current_item_upgrade_slots math < min_required_upgrade_slots math run return run tellraw @s {"color":"red","text":"The tool you are holding in the off hand does not support upgrades, or have no more upgrade slots available"}

#Remove 1 from "current_item_upgrade_slots"
scoreboard players operation current_item_upgrade_slots math -= upgrade_slot_uses_per math

#Set custom_data.upgrade_slots to the update value
#Get the scoreboard value and save it on storage so that we can use it for the item_modifier
execute store result storage blob:new_upgrade_slots value byte 1 run scoreboard players get current_item_upgrade_slots math
item modify entity @s weapon.offhand blob:apply_upgrade_slots_data


#Remove the "current_item_upgrade_slots" so that no issues should appear when another player does the same thing later on/same time.
scoreboard players reset current_item_upgrade_slots math



#Level 1
execute as @s if items entity @s weapon.mainhand minecraft:book[minecraft:custom_data~{level:1b}] as @s run function blob:mining/speed/apply_upgrade/level_1

#Level 2
execute as @s if items entity @s weapon.mainhand minecraft:book[minecraft:custom_data~{level:2b}] as @s run function blob:mining/speed/apply_upgrade/level_2

#Level 3
execute as @s if items entity @s weapon.mainhand minecraft:book[minecraft:custom_data~{level:3b}] as @s run function blob:mining/speed/apply_upgrade/level_3

