#execute as @a[tag=miner,scores={miner_coal=1..}] run scoreboard players operation @s miner_coal -= mined_need_amount miner_settings
execute as @a[tag=miner,scores={miner_coal=1..}] as @s run function blob:class_xp_check/give/ore/coal
execute as @a[tag=miner,scores={miner_deep_coal=1..}] run scoreboard players operation @s miner_deep_coal -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_iron=1..}] run scoreboard players operation @s miner_iron -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_deep_iron=1..}] run scoreboard players operation @s miner_deep_iron -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_copper=1..}] run scoreboard players operation @s miner_copper -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_deep_copper=1..}] run scoreboard players operation @s miner_deep_copper -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_gold=1..}] run scoreboard players operation @s miner_gold -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_deep_gold=1..}] run scoreboard players operation @s miner_deep_gold -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_redstone=1..}] run scoreboard players operation @s miner_redstone -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_deep_redstone=1..}] run scoreboard players operation @s miner_deep_redstone -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_emerald=1..}] run scoreboard players operation @s miner_emerald -= mined_need_amount miner_settings


execute as @a[tag=miner,scores={miner_deep_emerald=1..}] run scoreboard players operation @s miner_deep_emerald -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_lapis=1..}] run scoreboard players operation @s miner_lapis -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_deep_lapis=1..}] run scoreboard players operation @s miner_deep_lapis -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_diamond=1..}] run scoreboard players operation @s miner_diamond -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_deep_diamond=1..}] run scoreboard players operation @s miner_deep_diamond -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_nether_gold=1..}] run scoreboard players operation @s miner_nether_gold -= mined_need_amount miner_settings

execute as @a[tag=miner,scores={miner_nether_quartz=1..}] run scoreboard players operation @s miner_nether_quartz -= mined_need_amount miner_settings

schedule function blob:class_xp_check/miner 1s