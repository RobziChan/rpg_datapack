advancement revoke @s only blob:right_click

tellraw @s "clicking"

#Class slection

##Miner
execute as @s if items entity @s weapon.mainhand minecraft:diamond_pickaxe[minecraft:custom_data={select_class_miner:true}] as @s run function blob:select_class/select_miner

##

##

##


#consumables

##Repair items
execute as @s if items entity @s weapon.mainhand minecraft:emerald[minecraft:custom_data={"charged_emerald":1b}] as @s run function blob:use_item/consumables/charged_emerald

execute as @s if items entity @s weapon.mainhand minecraft:emerald_block[minecraft:custom_data={"charged_emerald":2b}] as @s run function blob:use_item/consumables/charged_emerald_2


#Farmer itemes
execute as @s if items entity @s weapon.mainhand minecraft:iron_hoe[minecraft:custom_data~{"replanter":1b}] as @s run function blob:use_item/farmer/tool/harvest_wheat




##Miner related items

#Mining Speed
execute as @s if items entity @s weapon.mainhand minecraft:miner_pottery_sherd[minecraft:custom_data~{class_upgrade_mining_speed:true}] as @s run function blob:mining/speed/mining_speed_check_type

##Perk books
execute as @s if items entity @s weapon.mainhand minecraft:book[minecraft:custom_data~{haste_pickaxe_upgrade:true}] as @s run function blob:mining/speed/haste_pickaxe_upgrade_check_type




