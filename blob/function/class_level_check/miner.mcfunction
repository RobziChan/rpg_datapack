execute as @a[tag=miner,tag=miner_level_0] if score @s xp >= level_1 miner_level as @s run function blob:class_level_check/level_up/miner_level_1

execute as @a[tag=miner,tag=miner_level_1] if score @s xp >= level_2 miner_level as @s run function blob:class_level_check/level_up/miner_level_2

execute as @a[tag=miner,tag=miner_level_2] if score @s xp >= level_3 miner_level as @s run function blob:class_level_check/level_up/miner_level_3












#say miner level check
schedule function blob:class_level_check/miner 5s