ot = field("offer_type")

if string.upper(ot) == "MULTI" or string.upper(ot) == "MULTI-SAVE" then 

    pt = "Multi"

    pricerec = field("multi_save")

elseif field("unit") == 'kg' then

    pt = "LB"

    pricerec = field("priceperlb")

else 

    pt=ot

    pricerec = field("event_price")

end

if string.match(pricerec,"¢") then 

    midchar = "¢"

    plen = #pricerec-2

else midchar = "$" 

    prc = pricerec:match("%d+")

    if prc == nil then

      plen="Invalid Pricing"

    else

    plen = #prc

end

end



return pt.."-"..midchar.."-"..plen