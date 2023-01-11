local f = field("zone")

if (f == "FRE") then

p="\\\\10.3.0.39\\Alpha Broder\\ALPHA BRODER LOGOS\\Ash City Icons\\French\\" 

else 

p="\\\\10.3.0.39\\Alpha Broder\\ALPHA BRODER LOGOS\\Ash City Icons\\English\\" 

end



if (content == nil or content == "[]") then 

c=nil

else

s = "|"..p

c= p..content:gsub("%;",s)

end

return c







