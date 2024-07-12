execute at @s run summon armor_stand ~1 ~0.5 ~-1 {Tags:["seed_checker"]}
execute at @s run summon armor_stand ~1 ~0.5 ~0 {Tags:["seed_checker"]}
execute at @s run summon armor_stand ~1 ~0.5 ~1 {Tags:["seed_checker"]}

execute at @s run summon armor_stand ~0 ~0.5 ~-1 {Tags:["seed_checker"]}
execute at @s run summon armor_stand ~0 ~0.5 ~0 {Tags:["seed_checker"]}
execute at @s run summon armor_stand ~0 ~0.5 ~1 {Tags:["seed_checker"]}

execute at @s run summon armor_stand ~-1 ~0.5 ~-1 {Tags:["seed_checker"]}
execute at @s run summon armor_stand ~-1 ~0.5 ~0 {Tags:["seed_checker"]}
execute at @s run summon armor_stand ~-1 ~0.5 ~1 {Tags:["seed_checker"]}

execute as @e[tag=seed_checker] at @s if block ~ ~ ~ wheat[age=7] run tag @s add seed_found
execute at @e[tag=seed_found] run loot spawn ~ ~ ~ mine ~ ~ ~
execute at @e[tag=seed_found] run setblock ~ ~ ~ wheat[age=0]
playsound block.crop.break ambient @s ~ ~ ~ 1 1


kill @e[tag=seed_checker]


