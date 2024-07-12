advancement revoke @s only blob:right_click

#Class slection

##Miner
execute as @s if items entity @s weapon.mainhand minecraft:diamond_pickaxe[minecraft:custom_data={"select_class_miner":1}] as @s run function blob:select_class/select_miner

##

##

##


#consumables

##Repair items
execute as @s if items entity @s weapon.mainhand minecraft:emerald[minecraft:custom_data={"charged_emerald":1b}] as @s run function blob:use_item/consumables/charged_emerald

execute as @s if items entity @s weapon.mainhand minecraft:emerald_block[minecraft:custom_data={"charged_emerald":2b}] as @s run function blob:use_item/consumables/charged_emerald_2


#Farmer itemes
execute as @s if items entity @s weapon.mainhand minecraft:iron_hoe[minecraft:custom_data~{"replanter":1b}] as @s run function blob:use_item/farmer/tool/harvest_wheat
