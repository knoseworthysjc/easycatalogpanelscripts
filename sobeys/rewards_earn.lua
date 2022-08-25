local rec = field("rewards_points")
local regexa = rec:match("%d+%sAir")
local regexb = rec:match("%d+%sScene")
local regexc = rec:match("Get%s%w+")
local regexd = rec:match("OFF")


if(regexa)then
y = regexa
ret = y:gsub("Air","")
elseif(regexb) then
y = regexb
ret = y:gsub("Scene","")
elseif(regexc) then
 if(regexd) then ret = "" else ret=regexc:gsub("Get ","") end
else ret= ""
end

if ret == "" then 
return ""
else
return ret
end