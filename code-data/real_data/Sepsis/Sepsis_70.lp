activity("er registration").

activity("er triage").

activity("er sepsis triage").

activity("leucocytes").

activity("crp").

activity("lacticacid").

activity("iv antibiotics").

activity("admission nc").

activity("iv liquid").

activity("release a").

activity("return er").

activity("admission ic").

activity("release b").

activity("release c").

activity("release d").

activity("release e").

template(0,"Exactly1").
activation(0,"er registration").

template(1,"Exactly1").
activation(1,"er sepsis triage").

template(2,"Exactly1").
activation(2,"er triage").

template(3,"Absence").
activation(3,"release e").

template(4,"Alternate Succession").
activation(4,"er registration").
target(4,"er sepsis triage").

template(5,"Absence").
activation(5,"release d").

template(6,"Absence").
activation(6,"release c").

template(7,"Alternate Response").
activation(7,"er registration").
target(7,"leucocytes").

template(8,"Alternate Response").
activation(8,"er registration").
target(8,"crp").

template(9,"Init").
activation(9,"er registration").

template(10,"Absence").
activation(10,"release b").

template(11,"Alternate Response").
activation(11,"er triage").
target(11,"leucocytes").

template(12,"Alternate Response").
activation(12,"er triage").
target(12,"crp").

template(13,"Chain Succession").
activation(13,"er registration").
target(13,"er triage").

template(14,"Alternate Response").
activation(14,"er sepsis triage").
target(14,"leucocytes").

template(15,"Alternate Response").
activation(15,"er sepsis triage").
target(15,"crp").

template(16,"Absence").
activation(16,"admission ic").

template(17,"Chain Succession").
activation(17,"er triage").
target(17,"er sepsis triage").

template(18,"Co-Existence").
activation(18,"lacticacid").
target(18,"leucocytes").

template(19,"Alternate Succession").
activation(19,"er sepsis triage").
target(19,"iv antibiotics").

template(20,"Exactly1").
activation(20,"iv antibiotics").

template(21,"Succession").
activation(21,"er sepsis triage").
target(21,"leucocytes").

template(22,"Alternate Succession").
activation(22,"er registration").
target(22,"iv antibiotics").

template(23,"Succession").
activation(23,"er sepsis triage").
target(23,"crp").

template(24,"Alternate Succession").
activation(24,"er triage").
target(24,"iv antibiotics").

template(25,"Alternate Response").
activation(25,"er registration").
target(25,"admission nc").

template(26,"Existence").
activation(26,"admission nc").

template(27,"Alternate Response").
activation(27,"er triage").
target(27,"admission nc").

template(28,"Alternate Response").
activation(28,"er sepsis triage").
target(28,"admission nc").

template(29,"Co-Existence").
activation(29,"admission nc").
target(29,"crp").

template(30,"Absence").
activation(30,"return er").

template(31,"Exactly1").
activation(31,"iv liquid").

template(32,"Alternate Response").
activation(32,"er sepsis triage").
target(32,"lacticacid").

template(33,"Alternate Succession").
activation(33,"er registration").
target(33,"iv liquid").

template(34,"Absence2").
activation(34,"admission nc").

