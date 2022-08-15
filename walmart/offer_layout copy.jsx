var offer_layout = myRecord["offer_type"];
var layoutAry = [offer_layout];
try{
var enddigit = "";
try{
var pt = 'EV';
if(offer_layout == "Multi"){
    pt = "Multi";
}
else if(myRecord['unit'] == 'kg') {
    pt = "LB";
}
switch(pt)
{
    case "Multi":
    var match = myRecord['multi_save'].match(/\d+\.\d\d|\$\d+/);
    var price = match[0];
    break;
    case "LB":
    enddigit = 'lb';
    var price = myRecord['priceperlb'];
    if(price == '00¢' && myRecord['event_price'] != '00¢'){
        price = (myRecord['event_price'].replace(/[^0-9\.]+/g, '')/2.20462).toFixed(2);
        if(price < 1){
            price = price.substr(2,2)+"¢";
        }
    }   
    break;
    default:
        var price = myRecord['event_price']+"";    
    break;
}

var orgPrice = price.replace(/[^0-9\.]+/g, '');
var decimals = orgPrice % 1;

if(price.indexOf("¢") > 0 || orgPrice < 1){
    layoutAry.push("¢");
    layoutAry.push(orgPrice.length);
}
else if(decimals != 0){
    var split = orgPrice.split(".");
    layoutAry.push(split[0].length);
}
else{    
        layoutAry.push("$");
        layoutAry.push(orgPrice.length);
}


if(enddigit != ''){
layoutAry.push(enddigit);
}
}catch(e){layoutAry.push(e.message);}

offer_layout = layoutAry.join("-");
} catch(e){
    offer_layout=e.message;
}
offer_layout;