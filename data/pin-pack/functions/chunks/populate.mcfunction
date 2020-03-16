loot spawn ~ ~ ~ loot pin-pack:structsinchunk

execute at @e[type=item,nbt={Item:{id:"minecraft:melon_slice",tag:{Enchantments:[{lvl:255s,id:"minecraft:unbreaking"}]}}}] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":"struct"}',NoGravity:1,Invulnerable:1,Invisible:1}

kill @e[type=item,nbt={Item:{id:"minecraft:melon_slice",tag:{Enchantments:[{lvl:255s,id:"minecraft:unbreaking"}]}}},distance=0]

spreadplayers ~ ~ 4 8 false @e[type=minecraft:armor_stand,name="struct",distance=0]