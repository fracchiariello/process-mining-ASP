activity("declaration submitted by employee").

activity("declaration final_approved by supervisor").

activity("payment handled").

activity("request payment").

activity("declaration approved by administration").

activity("declaration approved by budget owner").

activity("declaration rejected by employee").

activity("declaration rejected by administration").

activity("declaration approved by pre_approver").

activity("declaration rejected by supervisor").

activity("declaration saved by employee").

activity("declaration rejected by missing").

activity("declaration rejected by pre_approver").

activity("declaration rejected by budget owner").

activity("declaration for_approval by administration").

activity("declaration for_approval by pre_approver").

activity("declaration for_approval by supervisor").

template(0,"Absence").
activation(0,"declaration for_approval by pre_approver").

template(1,"Absence").
activation(1,"declaration for_approval by supervisor").

template(2,"Absence").
activation(2,"declaration for_approval by administration").

template(3,"Absence").
activation(3,"declaration rejected by budget owner").

template(4,"Absence").
activation(4,"declaration rejected by pre_approver").

template(5,"Absence").
activation(5,"declaration rejected by missing").

template(6,"Absence").
activation(6,"declaration saved by employee").

template(7,"Init").
activation(7,"declaration submitted by employee").

template(8,"Absence").
activation(8,"declaration rejected by supervisor").

template(9,"Exactly1").
activation(9,"payment handled").

template(10,"Exactly1").
activation(10,"request payment").

template(11,"Chain Succession").
activation(11,"request payment").
target(11,"payment handled").

template(12,"Exactly1").
activation(12,"declaration final_approved by supervisor").

template(13,"Alternate Succession").
activation(13,"declaration final_approved by supervisor").
target(13,"payment handled").

template(14,"Chain Succession").
activation(14,"declaration final_approved by supervisor").
target(14,"request payment").

template(15,"Absence").
activation(15,"declaration approved by pre_approver").

template(16,"Absence").
activation(16,"declaration rejected by administration").

template(17,"Exactly1").
activation(17,"declaration submitted by employee").

template(18,"Absence").
activation(18,"declaration rejected by employee").

template(19,"Alternate Succession").
activation(19,"declaration submitted by employee").
target(19,"declaration final_approved by supervisor").

template(20,"Alternate Succession").
activation(20,"declaration submitted by employee").
target(20,"payment handled").

template(21,"Alternate Succession").
activation(21,"declaration submitted by employee").
target(21,"request payment").

template(22,"Chain Precedence").
activation(22,"declaration submitted by employee").
target(22,"declaration approved by administration").

template(23,"Succession").
activation(23,"declaration submitted by employee").
target(23,"declaration approved by administration").

template(24,"Exactly1").
activation(24,"declaration approved by administration").

template(25,"Alternate Succession").
activation(25,"declaration approved by administration").
target(25,"payment handled").

template(26,"Alternate Succession").
activation(26,"declaration approved by administration").
target(26,"declaration final_approved by supervisor").

template(27,"Alternate Succession").
activation(27,"declaration approved by administration").
target(27,"request payment").

template(28,"Absence").
activation(28,"declaration approved by budget owner").

