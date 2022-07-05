local rec = field("rewards_points")
local regex = rec:match("Pay%s(.*)")
if(regex) then
x = split(regex," ")[1]
y=split(x,",")[1]
z = y:gsub("/ea","")
return z 
else return "" end