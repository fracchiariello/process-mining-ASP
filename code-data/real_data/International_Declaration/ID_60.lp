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

template(25,"Chain Succession").
activation(25,"declaration final_approved by supervisor").
target(25,"request payment").

template(26,"Absence").
activation(26,"permit approved by supervisor").

template(27,"Absence").
activation(27,"permit final_approved by director").

template(28,"Chain Succession").
activation(28,"start trip").
target(28,"end trip").

template(29,"Alternate Succession").
activation(29,"start trip").
target(29,"payment handled").

template(30,"Exactly1").
activation(30,"permit submitted by employee").

template(31,"Alternate Succession").
activation(31,"start trip").
target(31,"request payment").

template(32,"Alternate Succession").
activation(32,"end trip").
target(32,"payment handled").

template(33,"Alternate Succession").
activation(33,"end trip").
target(33,"request payment").

template(34,"Alternate Succession").
activation(34,"permit submitted by employee").
target(34,"payment handled").

template(35,"Alternate Succession").
activation(35,"permit submitted by employee").
target(35,"request payment").

template(36,"Alternate Succession").
activation(36,"start trip").
target(36,"declaration final_approved by supervisor").

template(37,"Alternate Succession").
activation(37,"end trip").
target(37,"declaration final_approved by supervisor").

template(38,"Exactly1").
activation(38,"permit final_approved by supervisor").

template(39,"Alternate Succession").
activation(39,"permit submitted by employee").
target(39,"end trip").

template(40,"Init").
activation(40,"permit submitted by employee").

template(41,"Alternate Succession").
activation(41,"permit submitted by employee").
target(41,"declaration final_approved by supervisor").

template(42,"Alternate Succession").
activation(42,"permit submitted by employee").
target(42,"permit final_approved by supervisor").

template(43,"Absence").
activation(43,"declaration rejected by administration").

template(44,"Alternate Succession").
activation(44,"permit final_approved by supervisor").
target(44,"payment handled").

template(45,"Alternate Succession").
activation(45,"permit final_approved by supervisor").
target(45,"request payment").

template(46,"Alternate Succession").
activation(46,"permit submitted by employee").
target(46,"start trip").

template(47,"Alternate Succession").
activation(47,"permit final_approved by supervisor").
target(47,"declaration final_approved by supervisor").

template(48,"Exactly1").
activation(48,"declaration submitted by employee").

template(49,"Absence").
activation(49,"declaration rejected by employee").

template(50,"Succession").
activation(50,"declaration submitted by employee").
target(50,"declaration approved by administration").

template(51,"Chain Precedence").
activation(51,"declaration submitted by employee").
target(51,"declaration approved by administration").

template(52,"Exactly1").
activation(52,"declaration approved by administration").

template(53,"Alternate Succession").
activation(53,"declaration submitted by employee").
target(53,"payment handled").

template(54,"Alternate Succession").
activation(54,"declaration submitted by employee").
target(54,"request payment").

template(55,"Alternate Succession").
activation(55,"declaration approved by administration").
target(55,"payment handled").

template(56,"Alternate Succession").
activation(56,"declaration approved by administration").
target(56,"request payment").

template(57,"Alternate Succession").
activation(57,"declaration submitted by employee").
target(57,"declaration final_approved by supervisor").

template(58,"Absence").
activation(58,"permit approved by budget owner").

template(59,"Alternate Succession").
activation(59,"permit final_approved by supervisor").
target(59,"end trip").

template(60,"Chain Succession").
activation(60,"permit submitted by employee").
target(60,"permit approved by administration").

template(61,"Exactly1").
activation(61,"permit approved by administration").

template(62,"Alternate Succession").
activation(62,"declaration approved by administration").
target(62,"declaration final_approved by supervisor").

template(63,"Absence").
activation(63,"declaration approved by budget owner").

template(64,"Chain Response").
activation(64,"end trip").
target(64,"declaration submitted by employee").

template(65,"Alternate Response").
activation(65,"permit approved by administration").
target(65,"declaration submitted by employee").

template(66,"Alternate Succession").
activation(66,"start trip").
target(66,"declaration approved by administration").

template(67,"Alternate Succession").
activation(67,"start trip").
target(67,"declaration submitted by employee").

template(68,"Alternate Succession").
activation(68,"permit approved by administration").
target(68,"payment handled").

template(69,"Alternate Succession").
activation(69,"permit submitted by employee").
target(69,"declaration submitted by employee").

template(70,"Alternate Succession").
activation(70,"permit approved by administration").
target(70,"request payment").

template(71,"Alternate Succession").
activation(71,"end trip").
target(71,"declaration approved by administration").

template(72,"Alternate Succession").
activation(72,"permit submitted by employee").
target(72,"declaration approved by administration").

template(73,"Alternate Succession").
activation(73,"permit approved by administration").
target(73,"declaration approved by administration").

template(74,"Alternate Succession").
activation(74,"permit approved by administration").
target(74,"declaration final_approved by supervisor").

template(75,"Alternate Succession").
activation(75,"end trip").
target(75,"declaration submitted by employee").

template(76,"Alternate Succession").
activation(76,"permit approved by administration").
target(76,"end trip").

template(77,"Alternate Succession").
activation(77,"permit approved by administration").
target(77,"permit final_approved by supervisor").

template(78,"Chain Succession").
activation(78,"permit final_approved by supervisor").
target(78,"start trip").

template(79,"Alternate Succession").
activation(79,"permit final_approved by supervisor").
target(79,"declaration submitted by employee").

template(80,"Alternate Succession").
activation(80,"permit final_approved by supervisor").
target(80,"declaration approved by administration").

template(81,"Alternate Succession").
activation(81,"permit approved by administration").
target(81,"start trip").

