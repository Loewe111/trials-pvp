give @s iron_pickaxe[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
give @s iron_axe[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
give @s iron_sword[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
give @s iron_shovel[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1

# item replace entity @s weapon.offhand with shield[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
execute if entity @s[team=blue] run item replace entity @s weapon.offhand with shield[base_color="blue",banner_patterns=[{pattern:guster,color:white}],enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false]
execute if entity @s[team=red] run item replace entity @s weapon.offhand with shield[base_color="red",banner_patterns=[{pattern:guster,color:white}],enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false]
execute if entity @s[team=neutral] run item replace entity @s weapon.offhand with shield[base_color="orange",banner_patterns=[{pattern:flow,color:white}],enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false]

item replace entity @s armor.head with iron_helmet[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
item replace entity @s armor.chest with iron_chestplate[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
item replace entity @s armor.legs with iron_leggings[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
item replace entity @s armor.feet with iron_boots[enchantments={levels:{"minecraft:vanishing_curse":1}},enchantment_glint_override=false] 1
