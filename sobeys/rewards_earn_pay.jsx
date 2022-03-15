var rewards = myRecord["rewards_points"];
var earn = /Earn(.*)\d+/gim
var pay = /Pay(.*)\d+(.*)\d+/gim
var percent = /\d+\sAir/gim
var response;
if (rewards.toUpperCase().indexOf("EARN") != -1) {
    var r = rewards.match(earn);
    if (r != null) {
        response = r[0].replace(/Earn\s/gim,"")
    }
} else if (rewards.toUpperCase().indexOf("PAY") != -1) {
    var r = rewards.match(pay);
    if (r != null) {
        response = r[0].replace(/Pay\s/gim,"");
    }
} else if (rewards.indexOf("%") != -1) {
    var r = rewards.match(percent);
    if (r != null) {
        response = r[0].replace(/Air/gim,"");
    }
}
else {
    response=null;    
}
response;