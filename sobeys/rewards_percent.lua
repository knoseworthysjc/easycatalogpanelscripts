local rec = field("rewards_points"):gsub(" %$%$ "," ")

if rec == "" then return "" else
local regexa = rec:match("%d+%%")
local regexb = rec:match("%d+%.%d+%sOFF")
local regexc = rec:match("%d+¢")
local regexd = rec:match("%d+%sOFF")
if(regexa) then
    ret=regexa
 elseif (regexb) then
    ret=regexb:gsub(" OFF","")
elseif (regexc) then
    ret=regexc
elseif (regexd) then
    ret=regexd
else ret= "" end

return ret
end