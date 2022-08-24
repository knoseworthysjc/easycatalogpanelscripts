local rec = field("rewards_points"):gsub(" %$%$ "," ")

if rec == "" then return "" else
local match1 = rec:match("OFF")
local match2 = rec:match("%%")


if(match1 or match2) then 
    local regexa = rec:match("%d+¢")
    local regexb = rec:match("%d+%.%d+")
    local regexc = rec:match("%d+%%")
    local regexd = rec:match("%d+%sOFF")

if(regexa) then
    ret=regexa
 elseif (regexb) then
    ret=regexb:gsub(" OFF","")
elseif (regexc) then
    ret=regexc
elseif (regexd) then
    ret=regexd:gsub(" OFF","")
else ret= "" end
else ret="" end

return ret
end