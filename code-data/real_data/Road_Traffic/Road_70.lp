activity("create fine").

activity("send fine").

activity("insert fine notification").

activity("add penalty").

activity("payment").

activity("send for credit collection").

activity("insert date appeal to prefecture").

activity("send appeal to prefecture").

activity("receive result appeal from prefecture").

activity("notify result appeal to offender").

activity("appeal to judge").

template(0,"Absence2").
activation(0,"insert fine notification").

template(1,"Init").
activation(1,"create fine").

template(2,"Exactly1").
activation(2,"create fine").

template(3,"Absence2").
activation(3,"add penalty").

template(4,"Absence").
activation(4,"appeal to judge").

template(5,"Absence").
activation(5,"notify result appeal to offender").

template(6,"Absence").
activation(6,"receive result appeal from prefecture").

template(7,"Absence").
activation(7,"send appeal to prefecture").

template(8,"Absence").
activation(8,"insert date appeal to prefecture").

template(9,"Absence2").
activation(9,"payment").

