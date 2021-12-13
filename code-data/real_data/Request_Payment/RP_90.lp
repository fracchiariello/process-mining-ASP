activity("request for payment submitted by employee").

activity("request for payment final_approved by supervisor").

activity("payment handled").

activity("request payment").

activity("request for payment approved by administration").

activity("request for payment approved by budget owner").

activity("request for payment rejected by employee").

activity("request for payment rejected by administration").

activity("request for payment approved by pre_approver").

activity("request for payment rejected by supervisor").

activity("request for payment saved by employee").

activity("request for payment rejected by missing").

activity("request for payment rejected by pre_approver").

activity("request for payment rejected by budget owner").

activity("request for payment approved by supervisor").

activity("request for payment final_approved by director").

activity("request for payment for_approval by supervisor").

activity("request for payment final_approved by budget owner").

activity("request for payment for_approval by administration").

template(0,"Absence").
activation(0,"request for payment for_approval by supervisor").

template(1,"Absence").
activation(1,"request for payment for_approval by administration").

template(2,"Absence").
activation(2,"request for payment final_approved by budget owner").

template(3,"Absence").
activation(3,"request for payment approved by supervisor").

template(4,"Absence").
activation(4,"request for payment final_approved by director").

template(5,"Absence").
activation(5,"request for payment rejected by budget owner").

template(6,"Absence").
activation(6,"request for payment rejected by pre_approver").

template(7,"Absence").
activation(7,"request for payment rejected by missing").

template(8,"Init").
activation(8,"request for payment submitted by employee").

template(9,"Absence").
activation(9,"request for payment saved by employee").

template(10,"Absence").
activation(10,"request for payment rejected by supervisor").

template(11,"Absence").
activation(11,"request for payment approved by pre_approver").

template(12,"Exactly1").
activation(12,"payment handled").

template(13,"Exactly1").
activation(13,"request payment").

template(14,"Chain Succession").
activation(14,"request payment").
target(14,"payment handled").

template(15,"Exactly1").
activation(15,"request for payment final_approved by supervisor").

template(16,"Alternate Succession").
activation(16,"request for payment final_approved by supervisor").
target(16,"payment handled").

template(17,"Chain Succession").
activation(17,"request for payment final_approved by supervisor").
target(17,"request payment").

template(18,"Exactly1").
activation(18,"request for payment submitted by employee").

