execute at @s run particle note ~ ~1 ~ 2.5 2 2.5 10 40
execute at @s run particle happy_villager ~ ~1 ~ 2.5 2 2.5 10 40
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 10

scoreboard players operation @s xp -= level_1 miner_level
scoreboard players set @s lvl 1

tag @s[tag=miner] add miner_level_1
tag @s[tag=miner] remove miner_level_0


tellraw @a [{"color":"yellow","selector":"@s"},{"text":" Just leveled up to "},{"score":{"name":"@s","objective":"lvl"}}]
