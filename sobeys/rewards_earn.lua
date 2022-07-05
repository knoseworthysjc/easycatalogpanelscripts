local rec = field("rewards_points")
local regexa = rec:match("%d+%sAir")
local regexb = rec:match("Get%s.+%s")

if(regexa)then

y = regexa
ret = y:gsub("Air","")
elseif(regexb) then

ret=regexb

else ret= ""

end

if ret == "" then 

return ""

else

return ret:gsub("Air","")

end