local rec = field("rewards_points")
local regexa = rec:match("%d+\%")
local regexb = rec:match("%d\.%d+%sOff")
local regexc = rec:match("%d+¢%sOff")

if(regexa) then
    return regexa
 elseif (regexb) then
    return regexb
elseif (regexc) then
    return regexc
else return "" end