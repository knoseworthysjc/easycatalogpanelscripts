local rec = field("rewards_points")
local regexa = rec:match("%d+%sAir")
local regexb = rec:match("%d+%sScene")
if(regexa)then
y = regexa
ret = y:gsub("Air","")
elseif(regexb) then
y = regexb
ret = y:gsub("Scene","")
else ret= ""
end

if ret == "" then 
return ""
else
return ret
end