local rec = field("offer_type")
local p1 = field("price/pricelb")
local p2 = field("price/pricekg")

p1 = string.match(p1, "%d+%.?%d*")
p2 = string.match(p2, "%d+%.?%d*")

p1 = tonumber(p1)
p2 = tonumber(p2)

if rec == "membership" and p1 and p2 then
    ret = p2 - p1
end