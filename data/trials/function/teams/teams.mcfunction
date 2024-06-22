team add red "Team Rot"
team modify red color red
team add blue "Team Blau"
team modify blue color blue

team leave @a

function trials:teams/generate_teams

execute as @a at @s run playsound minecraft:item.mace.smash_ground master @s ~ ~ ~
title @a[team=red] title {"text":"Team Rot","color":"dark_red"}
title @a[team=blue] title {"text":"Team Blau","color":"blue"}