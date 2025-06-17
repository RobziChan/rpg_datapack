#Check to see that they do not have the advancement for level 1 speed
#If they do have it then just return and tell them that they have learned it
execute unless entity @s[advancements={blob:mining/speed/mining_speed_1=false}] run return run tellraw @s {"color":"red","text":"You have already learned this!"}

#They have not learned it
#Give them the crafting recipes
recipe give @s blob:mining_speed_1/haste_pickaxe_upgrade_1
recipe give @s blob:mining_speed_1/speedy_pickaxe_level_1

#Give them the advancment
advancement grant @s only blob:mining/speed/mining_speed_1

#Remove the item from their hand
execute as @s run item replace entity @s weapon.mainhand with air