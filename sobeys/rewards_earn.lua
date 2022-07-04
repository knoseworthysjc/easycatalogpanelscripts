local rec = field("rewards_points")
local regexa = rec:match("Earn(.*)%d+")
local regexb = rec:match("Pay(.*)%d+(.*)%d+")
local regexc = rec:match("%d+%sAir")

if(regexa)then
    return regexa
elseif(regexb & regexc) then
    return regexb
else return ""
end