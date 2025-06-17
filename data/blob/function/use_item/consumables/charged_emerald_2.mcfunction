#use ~ instead of = as this will only compare some and not all of the custom_data on the item
execute unless items entity @s weapon.offhand #blob:diamond_tools[minecraft:custom_data~{"charged_emerald":1b}] run return fail

#OLD way
#execute as @s if items entity @s weapon.offhand #blob:diamond_tools[minecraft:custom_data={"emerald_pickaxe":1b}] as @s run item modify entity @s weapon.offhand {"function": "minecraft:set_damage","damage": 0.1,"add":true}

item modify entity @s weapon.offhand {"function": "minecraft:set_damage","damage": 0.4,"add":true}
item replace entity @s weapon.mainhand with air
playsound block.anvil.use ambient @s ~ ~ ~ 1.0 1.0 1.0
