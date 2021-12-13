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

template(35,"Succession").
activation(35,"er sepsis triage").
target(35,"lacticacid").

template(36,"Alternate Succession").
activation(36,"er triage").
target(36,"iv liquid").

template(37,"Alternate Precedence").
activation(37,"crp").
target(37,"iv antibiotics").

template(38,"Alternate Precedence").
activation(38,"leucocytes").
target(38,"iv antibiotics").

template(39,"Alternate Succession").
activation(39,"er sepsis triage").
target(39,"iv liquid").

template(40,"Response").
activation(40,"lacticacid").
target(40,"crp").

template(41,"Existence2").
activation(41,"crp").

template(42,"Alternate Response").
activation(42,"iv antibiotics").
target(42,"admission nc").

template(43,"Response").
activation(43,"lacticacid").
target(43,"leucocytes").

template(44,"Exactly1").
activation(44,"lacticacid").

template(45,"Succession").
activation(45,"iv antibiotics").
target(45,"admission nc").

template(46,"Alternate Succession").
activation(46,"er registration").
target(46,"lacticacid").

template(47,"Existence2").
activation(47,"leucocytes").

template(48,"Alternate Succession").
activation(48,"er registration").
target(48,"release a").

template(49,"Exactly1").
activation(49,"release a").

template(50,"Alternate Succession").
activation(50,"er sepsis triage").
target(50,"release a").

template(51,"Alternate Succession").
activation(51,"er triage").
target(51,"release a").

template(52,"Succession").
activation(52,"lacticacid").
target(52,"admission nc").

template(53,"Succession").
activation(53,"admission nc").
target(53,"release a").

template(54,"Alternate Precedence").
activation(54,"admission nc").
target(54,"release a").

template(55,"Alternate Precedence").
activation(55,"leucocytes").
target(55,"release a").

template(56,"Alternate Precedence").
activation(56,"crp").
target(56,"release a").

template(57,"Succession").
activation(57,"leucocytes").
target(57,"release a").

template(58,"Alternate Succession").
activation(58,"iv liquid").
target(58,"iv antibiotics").

template(59,"Alternate Precedence").
activation(59,"lacticacid").
target(59,"iv antibiotics").

template(60,"Succession").
activation(60,"crp").
target(60,"release a").

template(61,"Alternate Succession").
activation(61,"er triage").
target(61,"lacticacid").

template(62,"Alternate Response").
activation(62,"iv antibiotics").
target(62,"crp").

