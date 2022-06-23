local rec = field("rewards_points")
local regex = rec:match("Pay%s(.*)")
if(regex) then
x = split(regex," ")[1]
return split(x,",")[1]
else return "" end