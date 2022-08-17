ot = field("offer_type")
if ot == "Multi" then 
    pt = "Multi"
    pricerec = field("multi_save")
elseif field("unit") == 'kg' then
    pt = "LB"
    pricerec = field("priceperlb")
else pt = "EV"
    pt=ot
    pricerec = field("event_price")
end
if string.match(pricerec,"¢") then 
    midchar = "¢"
    plen = #pricerec-2
else midchar = "$" 
    prc = pricerec:match("%d+")
    plen = #prc
end

return pt.."-"..midchar.."-"..plen