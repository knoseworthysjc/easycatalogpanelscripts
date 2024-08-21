recordset = DATASOURCE.get():getrecordset();
records:addfield("layout_x");
records:addfield("layout_y");
records:addfield("alltemplates");

layoutSet = DATASOURCE.get("SobeysGrids"):getrecordset();



for i = 1,records:size() do 
    local rec = records:getrecord(i);
    local pgLayout = rec:field("pagelayout"):content();
    local pos = rec:field("position"):content();
    local matches = layoutSet:filter("Page Layout",pgLayout,"Position",pos);
    rec:field("alltemplates"):setcontent(matches:size());
    if (matches:size() == 1) then 
        local mr = matches:getrecord(1);
        rec:field("layout_x"):setcontent(mr:field("x"):content());
        rec:field("layout_y"):setcontent(mr:field("y"):content());
    end
end



