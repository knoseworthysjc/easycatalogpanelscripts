

recordset = DATASOURCE.get():getrecordset();
records:addfield("offer_copy_bold_bileng");
recordset:addField("offer_copy_bileng");
records:addField("offer_copy_qualifer_bileng");


 for i = 1,records:size() do
   local rec = records:getrecord(i);
   if (rec:field("language"):content() == "French") then
    local p = rec:field("project"):content();
    local item = rec:field("item_number"):content();
    local t = rec:field("template"):content();
    local l = "English";
    nr = records:duplicaterecord(i);
    nr:field("ID"):setcontent( nr:field("ID"):content() .. "-BILINGUAL");
    nr:field("language"):setcontent("Bilingual");
   
   local match = recordset:filter("project",p,"item_number",item,"language",l,"template",t)
   
    local firstMatchRecord = match[1]
   
   end 
end