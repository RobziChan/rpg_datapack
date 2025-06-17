#Level 1
tellraw @s "Mining Speed check"
execute as @s if items entity @s weapon.mainhand minecraft:miner_pottery_sherd[minecraft:custom_data~{level:1b}] as @s run function blob:mining/speed/level_1

#Level 2

#Level 3
