var rewards = myRecord["rewards_points"];
var regex = /Buy|Spend/gim
var matches = rewards.match(regex)
var match;
if(matches != null){
    
var s = rewards.split(" ");
var m = s[1].replace(",","");
match = m;

} else {
    match=matches;
}
match;
