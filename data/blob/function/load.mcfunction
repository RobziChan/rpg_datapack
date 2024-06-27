tellraw @a [{"color":"dark_blue","text":"Pee"},{"color":"dark_aqua","text":"Pee"},{"color":"green","text":"Poo"},{"color":"red","text":"Poo"}]
gamerule doLimitedCrafting true
recipe give @a *

scoreboard objectives add xp dummy "XP"
scoreboard objectives add lvl dummy "LvL"

scoreboard objectives add pvp minecraft.custom:minecraft.player_kills "PvP"
scoreboard objectives add pve minecraft.custom:minecraft.mob_kills "PvE"


function blob:class_scoreboard/miner
function blob:remove_custom_recipe

schedule function blob:class_level_check/miner 5s
schedule function blob:class_xp_check/miner 1s


scoreboard objectives setdisplay below_name lvl


execute as @a[tag=!selected_class] run give @s diamond_pickaxe[custom_name='{"color":"dark_purple","text":"Select Class Miner"}',custom_data={"select_class_miner":1},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000000}] 1