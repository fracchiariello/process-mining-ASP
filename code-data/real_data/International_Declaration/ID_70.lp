activity("end trip").

activity("start trip").

activity("declaration submitted by employee").

activity("payment handled").

activity("request payment").

activity("permit submitted by employee").

activity("declaration final_approved by supervisor").

activity("permit final_approved by supervisor").

activity("declaration approved by administration").

activity("permit approved by administration").

activity("declaration approved by budget owner").

activity("permit approved by budget owner").

activity("declaration rejected by employee").

activity("declaration rejected by administration").

activity("permit final_approved by director").

activity("permit approved by supervisor").

activity("declaration approved by pre_approver").

activity("permit approved by pre_approver").

activity("send reminder").

activity("declaration approved by supervisor").

activity("declaration final_approved by director").

activity("permit rejected by employee").

activity("declaration rejected by supervisor").

activity("declaration rejected by missing").

activity("permit rejected by supervisor").

activity("declaration rejected by pre_approver").

activity("permit rejected by administration").

activity("declaration saved by employee").

activity("permit rejected by missing").

activity("declaration rejected by budget owner").

activity("permit rejected by budget owner").

activity("permit rejected by pre_approver").

activity("declaration rejected by director").

activity("permit rejected by director").

template(0,"Exactly1").
activation(0,"end trip").

template(1,"Exactly1").
activation(1,"start trip").

template(2,"Absence").
activation(2,"permit rejected by director").

template(3,"Absence").
activation(3,"declaration rejected by director").

template(4,"Absence").
activation(4,"permit rejected by pre_approver").

template(5,"Absence").
activation(5,"permit rejected by budget owner").

template(6,"Absence").
activation(6,"declaration rejected by budget owner").

template(7,"Absence").
activation(7,"permit rejected by missing").

template(8,"Absence").
activation(8,"declaration saved by employee").

template(9,"Absence").
activation(9,"permit rejected by administration").

template(10,"Absence").
activation(10,"declaration rejected by pre_approver").

template(11,"Absence").
activation(11,"permit rejected by supervisor").

template(12,"Absence").
activation(12,"declaration rejected by missing").

template(13,"Absence").
activation(13,"declaration rejected by supervisor").

template(14,"Absence").
activation(14,"permit rejected by employee").

template(15,"Absence").
activation(15,"declaration final_approved by director").

template(16,"Absence").
activation(16,"declaration approved by supervisor").

template(17,"Exactly1").
activation(17,"payment handled").

template(18,"Exactly1").
activation(18,"request payment").

template(19,"Chain Succession").
activation(19,"request payment").
target(19,"payment handled").

template(20,"Absence").
activation(20,"send reminder").

template(21,"Absence").
activation(21,"permit approved by pre_approver").

template(22,"Absence").
activation(22,"declaration approved by pre_approver").

template(23,"Exactly1").
activation(23,"declaration final_approved by supervisor").

template(24,"Alternate Succession").
activation(24,"declaration final_approved by supervisor").
target(24,"payment handled").

template(25,"Alternate Response").
activation(25,"start trip").
target(25,"declaration submitted by employee").

template(26,"Chain Succession").
activation(26,"declaration final_approved by supervisor").
target(26,"request payment").

template(27,"Absence").
activation(27,"permit final_approved by director").

template(28,"Absence").
activation(28,"permit approved by supervisor").

template(29,"Chain Succession").
activation(29,"start trip").
target(29,"end trip").

template(30,"Alternate Succession").
activation(30,"start trip").
target(30,"payment handled").

template(31,"Exactly1").
activation(31,"permit submitted by employee").

template(32,"Alternate Succession").
activation(32,"start trip").
target(32,"request payment").

template(33,"Alternate Response").
activation(33,"permit submitted by employee").
target(33,"declaration submitted by employee").

template(34,"Alternate Succession").
activation(34,"end trip").
target(34,"payment handled").

template(35,"Alternate Succession").
activation(35,"end trip").
target(35,"request payment").

template(36,"Succession").
activation(36,"end trip").
target(36,"declaration submitted by employee").

template(37,"Alternate Succession").
activation(37,"permit submitted by employee").
target(37,"payment handled").

template(38,"Alternate Succession").
activation(38,"permit submitted by employee").
target(38,"request payment").

template(39,"Alternate Succession").
activation(39,"start trip").
target(39,"declaration final_approved by supervisor").

template(40,"Alternate Succession").
activation(40,"end trip").
target(40,"declaration final_approved by supervisor").

template(41,"Exactly1").
activation(41,"permit final_approved by supervisor").

template(42,"Alternate Succession").
activation(42,"permit submitted by employee").
target(42,"end trip").

template(43,"Alternate Response").
activation(43,"permit final_approved by supervisor").
target(43,"declaration submitted by employee").

template(44,"Init").
activation(44,"permit submitted by employee").

template(45,"Alternate Succession").
activation(45,"permit submitted by employee").
target(45,"declaration final_approved by supervisor").

template(46,"Alternate Succession").
activation(46,"permit submitted by employee").
target(46,"permit final_approved by supervisor").

template(47,"Absence").
activation(47,"declaration rejected by administration").

template(48,"Alternate Succession").
activation(48,"permit final_approved by supervisor").
target(48,"payment handled").

template(49,"Alternate Succession").
activation(49,"permit final_approved by supervisor").
target(49,"request payment").

template(50,"Alternate Succession").
activation(50,"permit submitted by employee").
target(50,"start trip").

template(51,"Alternate Succession").
activation(51,"permit final_approved by supervisor").
target(51,"declaration final_approved by supervisor").

template(52,"Exactly1").
activation(52,"declaration submitted by employee").

template(53,"Absence").
activation(53,"declaration rejected by employee").

template(54,"Succession").
activation(54,"declaration submitted by employee").
target(54,"declaration approved by administration").

template(55,"Chain Precedence").
activation(55,"declaration submitted by employee").
target(55,"declaration approved by administration").

template(56,"Exactly1").
activation(56,"declaration approved by administration").

template(57,"Alternate Succession").
activation(57,"declaration submitted by employee").
target(57,"payment handled").

template(58,"Alternate Succession").
activation(58,"declaration submitted by employee").
target(58,"request payment").

template(59,"Alternate Succession").
activation(59,"declaration approved by administration").
target(59,"payment handled").

template(60,"Alternate Succession").
activation(60,"declaration approved by administration").
target(60,"request payment").

template(61,"Alternate Succession").
activation(61,"declaration submitted by employee").
target(61,"declaration final_approved by supervisor").

template(62,"Absence").
activation(62,"permit approved by budget owner").

template(63,"Succession").
activation(63,"permit approved by administration").
target(63,"declaration submitted by employee").

template(64,"Alternate Succession").
activation(64,"permit final_approved by supervisor").
target(64,"end trip").

template(65,"Chain Succession").
activation(65,"permit submitted by employee").
target(65,"permit approved by administration").

template(66,"Exactly1").
activation(66,"permit approved by administration").

template(67,"Alternate Succession").
activation(67,"declaration approved by administration").
target(67,"declaration final_approved by supervisor").

template(68,"Absence").
activation(68,"declaration approved by budget owner").

template(69,"Alternate Precedence").
activation(69,"permit submitted by employee").
target(69,"declaration submitted by employee").

template(70,"Chain Response").
activation(70,"end trip").
target(70,"declaration submitted by employee").

template(71,"Alternate Response").
activation(71,"permit approved by administration").
target(71,"declaration submitted by employee").

template(72,"Alternate Precedence").
activation(72,"permit submitted by employee").
target(72,"declaration approved by administration").

template(73,"Alternate Succession").
activation(73,"start trip").
target(73,"declaration approved by administration").

template(74,"Alternate Precedence").
activation(74,"permit approved by administration").
target(74,"payment handled").

template(75,"Alternate Precedence").
activation(75,"permit approved by administration").
target(75,"request payment").

