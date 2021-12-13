activity("end trip").

activity("start trip").

activity("permit submitted by employee").

activity("permit final_approved by supervisor").

activity("payment handled").

activity("request payment").

activity("permit approved by administration").

activity("declaration submitted by employee").

activity("declaration final_approved by supervisor").

activity("declaration approved by administration").

activity("permit approved by budget owner").

activity("declaration approved by budget owner").

activity("send reminder").

activity("declaration rejected by employee").

activity("request for payment submitted by employee").

activity("request for payment final_approved by supervisor").

activity("declaration rejected by administration").

activity("request for payment approved by administration").

activity("permit approved by supervisor").

activity("permit final_approved by director").

activity("permit approved by pre_approver").

activity("declaration approved by pre_approver").

activity("request for payment approved by budget owner").

activity("permit rejected by employee").

activity("declaration approved by supervisor").

activity("declaration final_approved by director").

activity("request for payment rejected by employee").

activity("request for payment rejected by administration").

activity("permit rejected by administration").

activity("permit rejected by supervisor").

activity("request for payment approved by pre_approver").

activity("declaration rejected by supervisor").

activity("declaration rejected by missing").

activity("permit rejected by missing").

activity("declaration rejected by pre_approver").

activity("declaration saved by employee").

activity("permit rejected by budget owner").

activity("declaration rejected by budget owner").

activity("request for payment approved by supervisor").

activity("request for payment final_approved by director").

activity("permit rejected by pre_approver").

activity("request for payment rejected by supervisor").

activity("request for payment saved by employee").

activity("permit saved by employee").

activity("request for payment rejected by pre_approver").

activity("request for payment rejected by missing").

activity("request for payment rejected by budget owner").

activity("declaration rejected by director").

activity("permit rejected by director").

activity("permit for_approval by supervisor").

activity("permit for_approval by administration").

template(0,"Exactly1").
activation(0,"end trip").

template(1,"Exactly1").
activation(1,"start trip").

template(2,"Absence").
activation(2,"permit for_approval by supervisor").

template(3,"Absence").
activation(3,"permit for_approval by administration").

template(4,"Absence").
activation(4,"permit rejected by director").

template(5,"Absence").
activation(5,"declaration rejected by director").

template(6,"Absence").
activation(6,"request for payment rejected by budget owner").

template(7,"Absence").
activation(7,"request for payment rejected by missing").

template(8,"Absence").
activation(8,"request for payment rejected by pre_approver").

template(9,"Absence").
activation(9,"request for payment rejected by supervisor").

template(10,"Absence").
activation(10,"request for payment saved by employee").

template(11,"Absence").
activation(11,"permit saved by employee").

template(12,"Absence").
activation(12,"permit rejected by pre_approver").

template(13,"Absence").
activation(13,"request for payment approved by supervisor").

template(14,"Absence").
activation(14,"request for payment final_approved by director").

template(15,"Absence").
activation(15,"declaration rejected by budget owner").

template(16,"Absence").
activation(16,"permit rejected by budget owner").

template(17,"Absence").
activation(17,"declaration saved by employee").

template(18,"Absence").
activation(18,"declaration rejected by pre_approver").

template(19,"Absence").
activation(19,"permit rejected by missing").

template(20,"Absence").
activation(20,"declaration rejected by missing").

template(21,"Absence").
activation(21,"declaration rejected by supervisor").

template(22,"Absence").
activation(22,"request for payment approved by pre_approver").

template(23,"Absence").
activation(23,"permit rejected by supervisor").

template(24,"Absence").
activation(24,"permit rejected by administration").

template(25,"Absence").
activation(25,"request for payment rejected by administration").

template(26,"Absence").
activation(26,"request for payment rejected by employee").

template(27,"Absence").
activation(27,"declaration final_approved by director").

template(28,"Absence").
activation(28,"declaration approved by supervisor").

template(29,"Absence2").
activation(29,"declaration approved by administration").

template(30,"Exactly1").
activation(30,"permit submitted by employee").

template(31,"Absence").
activation(31,"permit rejected by employee").

template(32,"Absence").
activation(32,"request for payment approved by budget owner").

template(33,"Absence").
activation(33,"declaration approved by pre_approver").

template(34,"Absence").
activation(34,"permit approved by pre_approver").

template(35,"Absence").
activation(35,"permit final_approved by director").

template(36,"Absence").
activation(36,"permit approved by supervisor").

template(37,"Init").
activation(37,"permit submitted by employee").

template(38,"Alternate Succession").
activation(38,"permit submitted by employee").
target(38,"end trip").

template(39,"Exactly1").
activation(39,"permit final_approved by supervisor").

template(40,"Chain Succession").
activation(40,"start trip").
target(40,"end trip").

template(41,"Alternate Succession").
activation(41,"permit submitted by employee").
target(41,"start trip").

template(42,"Alternate Succession").
activation(42,"permit submitted by employee").
target(42,"permit final_approved by supervisor").

template(43,"Absence").
activation(43,"request for payment approved by administration").

template(44,"Absence").
activation(44,"declaration rejected by administration").

template(45,"Absence").
activation(45,"request for payment final_approved by supervisor").

template(46,"Absence").
activation(46,"request for payment submitted by employee").

template(47,"Absence").
activation(47,"declaration rejected by employee").

template(48,"Absence").
activation(48,"send reminder").

