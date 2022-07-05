local rec = field("rewards_points")
if rec == "" then return "" else
local regexa = rec:match("%d+%%")
local regexb = rec:match("%d+%.%d+%sOFF")
local regexc = rec:match("%d+¢")

if(regexa) then
    ret=regexa
 elseif (regexb) then
    ret=regexb:gsub(" OFF","")
elseif (regexc) then
    ret=regexc
else ret= "" end

return ret
end