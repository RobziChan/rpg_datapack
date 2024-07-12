#Things that will give you XP
scoreboard objectives add miner_coal minecraft.mined:minecraft.coal_ore
scoreboard players set default miner_coal 1
execute unless score xp_amount miner_coal >= default miner_coal run scoreboard players set xp_amount miner_coal 1

scoreboard objectives add miner_deep_coal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard players set default miner_deep_coal 1
execute unless score xp_amount miner_deep_coal >= default miner_deep_coal run scoreboard players set xp_amount miner_deep_coal 1

scoreboard objectives add miner_iron minecraft.mined:minecraft.iron_ore
scoreboard players set default miner_iron 1
execute unless score xp_amount miner_iron >= default miner_iron run scoreboard players set xp_amount miner_iron 1

scoreboard objectives add miner_deep_iron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard players set default miner_deep_iron 1
execute unless score xp_amount miner_deep_iron >= default miner_deep_iron run scoreboard players set xp_amount miner_deep_iron 1

scoreboard objectives add miner_copper minecraft.mined:minecraft.copper_ore
scoreboard players set default miner_copper 1
execute unless score xp_amount miner_copper >= default miner_copper run scoreboard players set xp_amount miner_copper 1

scoreboard objectives add miner_deep_copper minecraft.mined:minecraft.deepslate_copper_ore
scoreboard players set default miner_deep_copper 1
execute unless score xp_amount miner_deep_copper >= default miner_deep_copper run scoreboard players set xp_amount miner_deep_copper 1

scoreboard objectives add miner_gold minecraft.mined:minecraft.gold_ore
scoreboard players set default miner_gold 1
execute unless score xp_amount miner_gold >= default miner_gold run scoreboard players set xp_amount miner_gold 1

scoreboard objectives add miner_deep_gold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard players set default miner_deep_gold 1
execute unless score xp_amount miner_deep_gold >= default miner_deep_gold run scoreboard players set xp_amount miner_deep_gold 1

scoreboard objectives add miner_redstone minecraft.mined:minecraft.redstone_ore
scoreboard players set default miner_redstone 1
execute unless score xp_amount miner_redstone >= default miner_redstone run scoreboard players set xp_amount miner_redstone 1

scoreboard objectives add miner_deep_redstone minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard players set default miner_deep_redstone 1
execute unless score xp_amount miner_deep_redstone >= default miner_deep_redstone run scoreboard players set xp_amount miner_deep_redstone 1

scoreboard objectives add miner_emerald minecraft.mined:minecraft.emerald_ore
scoreboard players set default miner_emerald 1
execute unless score xp_amount miner_emerald >= default miner_emerald run scoreboard players set xp_amount miner_emerald 1

scoreboard objectives add miner_deep_emerald minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard players set default miner_deep_emerald 1
execute unless score xp_amount miner_deep_emerald >= default miner_deep_emerald run scoreboard players set xp_amount miner_deep_emerald 1

scoreboard objectives add miner_lapis minecraft.mined:minecraft.lapis_ore
scoreboard players set default miner_lapis 1
execute unless score xp_amount miner_lapis >= default miner_lapis run scoreboard players set xp_amount miner_lapis 1

scoreboard objectives add miner_deep_lapis minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard players set default miner_deep_lapis 1
execute unless score xp_amount miner_deep_lapis >= default miner_deep_lapis run scoreboard players set xp_amount miner_deep_lapis 1

scoreboard objectives add miner_diamond minecraft.mined:minecraft.diamond_ore
scoreboard players set default miner_diamond 1
execute unless score xp_amount miner_diamond >= default miner_diamond run scoreboard players set xp_amount miner_diamond 1

scoreboard objectives add miner_deep_diamond minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard players set default miner_deep_diamond 1
execute unless score xp_amount miner_deep_diamond >= default miner_deep_diamond run scoreboard players set xp_amount miner_deep_diamond 1

scoreboard objectives add miner_nether_gold minecraft.mined:minecraft.nether_gold_ore
scoreboard players set default miner_nether_gold 1
execute unless score xp_amount miner_nether_gold >= default miner_nether_gold run scoreboard players set xp_amount miner_nether_gold 1

scoreboard objectives add miner_nether_quartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard players set default miner_nether_quartz 1
execute unless score xp_amount miner_nether_quartz >= default miner_nether_quartz run scoreboard players set xp_amount miner_nether_quartz 1

#Levels
scoreboard objectives add miner_level dummy "XP needed for Levels"
scoreboard players set level_1 miner_level 200
scoreboard players set level_2 miner_level 500
scoreboard players set level_3 miner_level 1000


#Global settings
scoreboard objectives add miner_settings dummy "Settings for Miner Class"
scoreboard players set default miner_settings 1

execute unless score mined_need_amount miner_settings >= default miner_settings run scoreboard players set mined_need_amount miner_settings 1


#execute as @a[tag=miner] run scoreboard objectives setdisplay sidebar miner_level

