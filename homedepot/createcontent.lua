

recordset = DATASOURCE.get():getrecordset();
records:addfield("offer_copy_bold_bileng");
records:addfield("offer_copy_bileng");
records:addfield("offer_copy_qualifer_bileng");
records:addfield("allMatches");
records:addfield("totalMatches");
--recordset:addField({ name = "offer_copy_bileng",type="text"});
--records:addField({ name = "offer_copy_qualifer_bileng",type="text"});


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
   
   local match = records:filter("project",p,"item_number",item,"language",l)
   nr:field("totalMatches"):setcontent(match:size());
   if (match:size() > 0) then 
    local mr = match:getrecord(1);
    nr:field("offer_copy_bold_bileng"):setcontent(mr:field("offer_copy_bold"):content())
    nr:field("offer_copy_bileng"):setcontent(mr:field("offer_copy"):content())
    nr:field("offer_copy_qualifer_bileng"):setcontent(mr:field("offer_copy_qualifier "):content())
    nr:field("ID"):setcontent( nr:field("ID"):content() .. "-" .. mr:field("id"):content());
    --nr:field("allMatches"):setcontent(match:tableof("ID","docket","season","project","event_id","submission_id","brand","logo","offer_type","offer_copy_bold","offer_copy","offer_copy_qualifier ","item_number","item_description"))
end
        
   end 
end