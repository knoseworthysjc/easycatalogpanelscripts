var rewards = myRecord["rewards_points"];
var regex = /Pay\s(.*)/gim
var match;

var matches = rewards.match(regex)
    if (matches != null) {
        match = matches[0].split(" ")[1];
    }
 else {
    match=matches;

}
match;