gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandModificationBlockLimit 10000000
time set day
weather clear

# tellraw @p ["",{"text":"Loewe_111's ","color":"gold"},{"text":"⛏ ","color":"gray"},{"text":"TRIAL ","bold":true,"color":"dark_red"},{"text":"CHAMBERS ","bold":true,"color":"red"},{"text":"🗡","color":"gray"}]

function trials:init/timer
function trials:init/scoreboards