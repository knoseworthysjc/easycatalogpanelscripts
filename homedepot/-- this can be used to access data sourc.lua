-- this can be used to access data source options
-- this_local =  DATASOURCE.get():getoption("locale", "US");

-- Rename an existing file
-- records:renamefield("Field 2", "f2");

-- Create a new field and add content
records:addfield("recID");
records.addField("frenchID");

for i = 1,records:size() do
   r = records:getrecord(i);
   r.field()

   r:field("Regular Field"):setcontent(i);
end

-- create a new tabular and add content
records:addfield("Tabular Field");
t = TABLE.new();
t:cell(1,1):setcontent("1");
t:cell(2,1):setcontent("2");
t:cell(3,1):setcontent("3");
t:cell(4,1):setcontent("4");

for i = 1,records:size() do
   r = records:getrecord(i);
   r:field("Tabular Field"):setcontent(t);
end
