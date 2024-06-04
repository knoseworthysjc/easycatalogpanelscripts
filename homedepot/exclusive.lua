local z = field("zone")
local e = field("exclusive")
local ret=e;
if (e == "true") then
    if (z == "English") then
        return "EXCLUSIVE"
    else 
        return "EXCLUSIVITÉ"
    end
end