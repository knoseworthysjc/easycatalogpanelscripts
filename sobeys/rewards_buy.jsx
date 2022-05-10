var rewards = myRecord["rewards_points"];
var regex = /(Buy|Spend)\s\w+[^a-z0-9]/gim;
var matches = rewards.match(regex);
var match;
if(matches != null){
    
var s = matches[0].split(" ");
var m = s[1].replace(",","");
match = m;

} else {
    match=matches;
}
match;
