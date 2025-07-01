tellraw @a [{"color":"dark_blue","text":"B"},{"color":"dark_aqua","text":"l"},{"color":"green","text":"o"},{"color":"red","text":"b"}]
gamerule doLimitedCrafting true
recipe give @a[tag=!selected_class] *

scoreboard objectives add xp dummy "XP"
scoreboard objectives add lvl dummy "LvL"

scoreboard objectives add pvp minecraft.custom:minecraft.player_kills "PvP"
scoreboard objectives add pve minecraft.custom:minecraft.mob_kills "PvE"

scoreboard objectives add math dummy "Math for perks"
scoreboard players set min_required_perk_slots math 1
scoreboard players set perk_slot_uses_per math 1


scoreboard objectives setdisplay sidebar math


function blob:class_scoreboard/miner
function blob:remove_custom_recipe

#schedule function blob:class_level_check/miner 5s
#schedule function blob:class_xp_check/miner 1s


scoreboard objectives setdisplay below_name lvl


#execute as @a[tag=!selected_class] run give @s written_book[custom_name={"color":"dark_purple","text":"Select Class Miner"},custom_data={select_class_miner:true},consumable={nutrition:0,saturation:0,can_always_eat:true,consume_seconds:1000000}] 1

#execute as @a[tag=!selected_class] run title @s title "Please select a class"


#TODO
#Use scoreboard type tigger and keep in mind to enable it after every use
#Use this to make a /trigger home when a user puts down a home item ( no idea what this is going to be yet )
#Create a /trigger spawn to teleport to spawn
#https://www.youtube.com/watch?v=5t8C1o12Rcw&