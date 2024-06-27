advancement revoke @s only blob:right_click
execute as @s if items entity @s weapon.mainhand minecraft:diamond_pickaxe[minecraft:custom_data={"select_class_miner":1}] as @s run function blob:select_class/select_miner

execute as @s if items entity @s weapon.mainhand minecraft:emerald[minecraft:custom_data={"charged_emerald":1b}] as @s run function blob:use_item/ores/charged_emerald

