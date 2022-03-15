var rewards = myRecord["rewards_points"];

var match;

if (rewards.indexOf("Air") != -1) {
    var regex = /\d+\sAir/gim
    var matches = rewards.match(regex)
    if (matches != null) {

        match = matches[0].replace(" Air", "");

    }
} else if (rewards.indexOf("Buy") != -1 && rewards.indexOf("Get") != -1) {
    var regex = /Get\s(.*)\s/gim
    var matches = rewards.match(regex)
    if (matches != null) {
        match = matches[0].replace("Get ", "");
    }
} else {
    match = "";
}
match;