var rewards = myRecord["rewards_points"].toUpperCase(),
    price_a = myRecord['price/pricelb'],
    offer_type = myRecord["offer_type"],
    ot;

if (rewards == '' || rewards == null) {
    ot = offer_type;
}
/*Buy Pay*/
else if (rewards.indexOf("BUY") != -1 && rewards.indexOf("PAY") != -1) {
    ot = "BMSM";
}
/*Buy Get*/
else if (rewards.indexOf("BUY") != -1 && rewards.indexOf("GET") != -1 ) {
    ot = "BOGO";
}
/*Save %*/
else if (rewards.indexOf("SAVE") != -1 || rewards.indexOf("OFF") != -1) {
    ot = "Save %%";
}
/*Air Miles*/
else if ((price_a == null || price_a == "") && rewards.indexOf('AIR') != -1) {
    ot = "Traffic_Airmiles";
}
/*Price LB*/
else if (offer_type == 'PRICE/KG') {
    ot = "price/lb"
} else {
    ot = offer_type;
}
ot;