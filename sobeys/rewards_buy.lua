local rec = field("rewards_points")
local regexa = rec:match("Buy")
local regexb = rec:match("Spend")
if(regexa) then
match = rec:match("Buy%s%g+"):gsub("Buy",""):gsub(",","")
elseif (regexb) then
match = rec:match("Spend%s%g+"):gsub("Spend","")
else match= "" end
return match;