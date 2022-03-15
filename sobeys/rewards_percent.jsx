var rewards = myRecord["rewards_points"];
var regex = /\d+%|\d\.\d+\sOff|/gim
var matches = rewards.match(regex)
var match;
if(matches != null){
    
match = matches[0].replace("OFF","");

} else {
    match=matches;
}
match;
