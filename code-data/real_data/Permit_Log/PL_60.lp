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

template(49,"Existence").
activation(49,"declaration submitted by employee").

template(50,"Absence2").
activation(50,"declaration submitted by employee").

template(51,"Chain Succession").
activation(51,"permit submitted by employee").
target(51,"permit approved by administration").

template(52,"Alternate Response").
activation(52,"start trip").
target(52,"declaration submitted by employee").

template(53,"Exactly1").
activation(53,"permit approved by administration").

template(54,"Alternate Succession").
activation(54,"permit final_approved by supervisor").
target(54,"end trip").

template(55,"Absence").
activation(55,"declaration approved by budget owner").

template(56,"Alternate Response").
activation(56,"permit submitted by employee").
target(56,"declaration submitted by employee").

template(57,"Chain Succession").
activation(57,"request payment").
target(57,"payment handled").

template(58,"Alternate Precedence").
activation(58,"declaration submitted by employee").
target(58,"declaration final_approved by supervisor").

template(59,"Succession").
activation(59,"end trip").
target(59,"declaration submitted by employee").

template(60,"Alternate Response").
activation(60,"declaration final_approved by supervisor").
target(60,"payment handled").

template(61,"Alternate Succession").
activation(61,"permit final_approved by supervisor").
target(61,"start trip").

template(62,"Chain Response").
activation(62,"declaration final_approved by supervisor").
target(62,"request payment").

template(63,"Alternate Response").
activation(63,"permit final_approved by supervisor").
target(63,"payment handled").

template(64,"Alternate Response").
activation(64,"permit final_approved by supervisor").
target(64,"request payment").

template(65,"Exactly1").
activation(65,"declaration final_approved by supervisor").

template(66,"Alternate Succession").
activation(66,"start trip").
target(66,"declaration final_approved by supervisor").

template(67,"Alternate Succession").
activation(67,"permit approved by administration").
target(67,"end trip").

template(68,"Alternate Succession").
activation(68,"end trip").
target(68,"declaration final_approved by supervisor").

template(69,"Absence").
activation(69,"permit approved by budget owner").

template(70,"Alternate Response").
activation(70,"permit final_approved by supervisor").
target(70,"declaration submitted by employee").

template(71,"Alternate Succession").
activation(71,"permit approved by administration").
target(71,"permit final_approved by supervisor").

template(72,"Alternate Succession").
activation(72,"permit approved by administration").
target(72,"start trip").

template(73,"Alternate Succession").
activation(73,"permit submitted by employee").
target(73,"declaration final_approved by supervisor").

template(74,"Alternate Succession").
activation(74,"permit final_approved by supervisor").
target(74,"declaration final_approved by supervisor").

template(75,"Exactly1").
activation(75,"payment handled").

template(76,"Exactly1").
activation(76,"request payment").

template(77,"Existence").
activation(77,"declaration approved by administration").

template(78,"Succession").
activation(78,"declaration submitted by employee").
target(78,"declaration approved by administration").

template(79,"Alternate Response").
activation(79,"start trip").
target(79,"declaration approved by administration").

template(80,"Alternate Response").
activation(80,"permit approved by administration").
target(80,"payment handled").

template(81,"Alternate Response").
activation(81,"permit approved by administration").
target(81,"request payment").

template(82,"Alternate Precedence").
activation(82,"declaration submitted by employee").
target(82,"payment handled").

template(83,"Alternate Precedence").
activation(83,"declaration submitted by employee").
target(83,"request payment").

template(84,"Chain Precedence").
activation(84,"declaration submitted by employee").
target(84,"declaration approved by administration").

template(85,"Alternate Succession").
activation(85,"start trip").
target(85,"payment handled").

template(86,"Alternate Response").
activation(86,"end trip").
target(86,"declaration approved by administration").

template(87,"Alternate Succession").
activation(87,"start trip").
target(87,"request payment").

template(88,"Succession").
activation(88,"declaration approved by administration").
target(88,"declaration final_approved by supervisor").

template(89,"Alternate Succession").
activation(89,"permit submitted by employee").
target(89,"payment handled").

template(90,"Alternate Succession").
activation(90,"end trip").
target(90,"payment handled").

template(91,"Alternate Succession").
activation(91,"permit submitted by employee").
target(91,"request payment").

template(92,"Alternate Succession").
activation(92,"end trip").
target(92,"request payment").

template(93,"Alternate Response").
activation(93,"permit submitted by employee").
target(93,"declaration approved by administration").

template(94,"Alternate Response").
activation(94,"permit approved by administration").
target(94,"declaration submitted by employee").

template(95,"Alternate Precedence").
activation(95,"declaration approved by administration").
target(95,"declaration final_approved by supervisor").

template(96,"Chain Response").
activation(96,"end trip").
target(96,"declaration submitted by employee").

template(97,"Alternate Response").
activation(97,"declaration approved by administration").
target(97,"request payment").

template(98,"Alternate Response").
activation(98,"declaration approved by administration").
target(98,"payment handled").

template(99,"Succession").
activation(99,"declaration final_approved by supervisor").
target(99,"request payment").

template(100,"Alternate Response").
activation(100,"permit approved by administration").
target(100,"declaration approved by administration").

