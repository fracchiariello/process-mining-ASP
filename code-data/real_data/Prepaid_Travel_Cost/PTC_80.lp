activity("request for payment submitted by employee").

activity("request payment").

activity("payment handled").

activity("request for payment final_approved by supervisor").

activity("permit submitted by employee").

activity("request for payment approved by administration").

activity("permit approved by administration").

activity("permit final_approved by supervisor").

activity("request for payment approved by budget owner").

activity("permit approved by budget owner").

activity("permit final_approved by director").

activity("permit approved by supervisor").

activity("request for payment rejected by employee").

activity("request for payment rejected by administration").

activity("request for payment approved by pre_approver").

activity("permit approved by pre_approver").

activity("permit rejected by employee").

activity("request for payment approved by supervisor").

activity("request for payment final_approved by director").

activity("permit rejected by supervisor").

activity("request for payment saved by employee").

activity("request for payment rejected by supervisor").

activity("permit rejected by missing").

activity("request for payment rejected by pre_approver").

activity("permit rejected by administration").

activity("permit rejected by budget owner").

activity("permit rejected by pre_approver").

activity("request for payment rejected by missing").

activity("request for payment rejected by budget owner").

template(0,"Absence").
activation(0,"request for payment rejected by budget owner").

template(1,"Absence").
activation(1,"request for payment rejected by missing").

template(2,"Absence").
activation(2,"permit rejected by pre_approver").

template(3,"Absence").
activation(3,"permit rejected by budget owner").

template(4,"Absence").
activation(4,"permit rejected by administration").

template(5,"Absence").
activation(5,"request for payment rejected by pre_approver").

template(6,"Absence").
activation(6,"permit rejected by missing").

template(7,"Absence").
activation(7,"request for payment rejected by supervisor").

template(8,"Absence").
activation(8,"request for payment saved by employee").

template(9,"Absence").
activation(9,"permit rejected by supervisor").

template(10,"Absence").
activation(10,"request for payment approved by supervisor").

template(11,"Absence").
activation(11,"request for payment final_approved by director").

template(12,"Absence").
activation(12,"permit rejected by employee").

template(13,"Exactly1").
activation(13,"request payment").

template(14,"Exactly1").
activation(14,"payment handled").

template(15,"Chain Succession").
activation(15,"request payment").
target(15,"payment handled").

template(16,"Exactly1").
activation(16,"request for payment final_approved by supervisor").

template(17,"Alternate Succession").
activation(17,"request for payment final_approved by supervisor").
target(17,"payment handled").

template(18,"Absence").
activation(18,"permit approved by pre_approver").

template(19,"Absence").
activation(19,"request for payment approved by pre_approver").

template(20,"Chain Succession").
activation(20,"request for payment final_approved by supervisor").
target(20,"request payment").

template(21,"Exactly1").
activation(21,"request for payment submitted by employee").

template(22,"Absence").
activation(22,"request for payment rejected by administration").

template(23,"Init").
activation(23,"permit submitted by employee").

template(24,"Absence").
activation(24,"request for payment rejected by employee").

template(25,"Alternate Succession").
activation(25,"request for payment submitted by employee").
target(25,"request payment").

template(26,"Alternate Succession").
activation(26,"request for payment submitted by employee").
target(26,"payment handled").

template(27,"Alternate Succession").
activation(27,"request for payment submitted by employee").
target(27,"request for payment final_approved by supervisor").

template(28,"Exactly1").
activation(28,"permit submitted by employee").

template(29,"Absence").
activation(29,"permit final_approved by director").

template(30,"Absence").
activation(30,"permit approved by supervisor").

template(31,"Alternate Succession").
activation(31,"permit submitted by employee").
target(31,"request payment").

template(32,"Alternate Succession").
activation(32,"permit submitted by employee").
target(32,"payment handled").

template(33,"Exactly1").
activation(33,"request for payment approved by administration").

template(34,"Alternate Succession").
activation(34,"request for payment approved by administration").
target(34,"payment handled").

template(35,"Alternate Succession").
activation(35,"request for payment approved by administration").
target(35,"request payment").

