# Run every tick (20 times per second)

execute at @a run summon minecraft:armor_stand ~ 0.0 ~ {CustomName:'{"text":"chunkmid"}',Invisible:1,NoGravity:1,Invulnerable:1}

execute as @e[type=minecraft:armor_stand,name="chunkmid",nbt={Invisible:1b,NoGravity:1b,Invulnerable:1b}] run function pin-pack:chunks/center