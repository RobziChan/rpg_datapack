tellraw @s[tag=!miner] [{"text":"You have selected the "},{"color":"dark_purple","text":"Miner"},{"text":" class"}]
tellraw @s[tag=miner] [{"text":"You are already the "},{"color":"dark_purple","text":"Miner"},{"text":" class"}]
tag @s[tag=!miner,tag=!miner_level_0] add miner_level_0
tag @s[tag=!miner] add miner
tag @s add selected_class
execute as @s run item replace entity @s weapon.mainhand with air