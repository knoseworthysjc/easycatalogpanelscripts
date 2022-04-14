var rewards = myRecord["rewards_points"];
var regex = /Buy|Spend(.*),/gim
var matches = rewards.match(regex)
var match;
if(matches != null){
    
match = matches[0].split(" ")[1].replace(",","");

} else {
    match=matches;
}
match;
