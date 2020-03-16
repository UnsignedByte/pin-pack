# -*- coding: utf-8 -*-
# @Author: edl
# @Date:   11:59:24, 16-Mar-2020
# @Last Modified by:   edl
# @Last Modified time: 11:59:51, 16-Mar-2020

#put in center.mcfunction after "populate chunks if not yet populated"

for i in range(-128, 129, 16):
    for j in range(-128, 129, 16):
        print(f"execute at @s positioned ~{i} ~ ~{j} unless entity @e[tag=marker,tag=processed,distance=..0.1] run function pin-pack:chunks/populate")