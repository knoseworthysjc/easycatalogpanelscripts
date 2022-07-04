local rec = field("rewards_points")
local regexa = rec:match("Buy")
local regexb = rec:match("Spend")
local regexone = rec:match("one")
local regexmin = rec:match("min%w")
if(regexone) then
    match = "one"
elseif(regexmin) then
    local regMin = rec:match("%d+")
    match = regMin
elseif(regexa) then
match = rec:match("Buy%s%g+"):gsub("Buy",""):gsub(",","")
elseif (regexb) then
match = rec:match("Spend%s%g+"):gsub("Spend","")
else match= "" end
return match;