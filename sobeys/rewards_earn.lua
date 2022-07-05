local rec = field("rewards_points")

local regexa = rec:match("%d+%sAir")

local regexb = rec:match("Get%s%d+.+%s")

local regexc = rec:match("Get one")





if(regexa)then

ret = regexa

elseif(regexb) then

ret=regexb

elseif(regexc) then

ret = "one"

else ret= ""

end



if ret == "" then 

return ""

else

return ret

end