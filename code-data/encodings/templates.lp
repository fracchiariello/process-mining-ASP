automaton("Responded Existence",s_0,b,s_1).
automaton("Responded Existence",s_1,a,s_1).
automaton("Responded Existence",s_2,a,s_2).
automaton("Responded Existence",s_2,c,s_2).
automaton("Responded Existence",s_0,c,s_0).
automaton("Responded Existence",s_0,a,s_2).
automaton("Responded Existence",s_2,b,s_1).
automaton("Responded Existence",s_1,b,s_1).
automaton("Responded Existence",s_1,c,s_1).

initial("Responded Existence",s_0).

accepting("Responded Existence",s_0).
accepting("Responded Existence",s_1).


automaton("Chain Response",s_1,a,s_2).
automaton("Chain Response",s_0,a,s_1).
automaton("Chain Response",s_1,b,s_0).
automaton("Chain Response",s_2,b,s_2).
automaton("Chain Response",s_0,b,s_0).
automaton("Chain Response",s_2,a,s_2).
automaton("Chain Response",s_2,c,s_2).
automaton("Chain Response",s_0,c,s_0).
automaton("Chain Response",s_1,c,s_2).

initial("Chain Response",s_0).

accepting("Chain Response",s_0).


automaton("Not Response",s_0,b,s_0).
automaton("Not Response",s_1,a,s_1).
automaton("Not Response",s_2,a,s_2).
automaton("Not Response",s_2,c,s_2).
automaton("Not Response",s_0,c,s_0).
automaton("Not Response",s_0,a,s_2).
automaton("Not Response",s_2,b,s_1).
automaton("Not Response",s_1,b,s_1).
automaton("Not Response",s_1,c,s_1).

initial("Not Response",s_0).

accepting("Not Response",s_0).
accepting("Not Response",s_2).


automaton("Alternate Response",s_1,a,s_2).
automaton("Alternate Response",s_0,a,s_1).
automaton("Alternate Response",s_1,b,s_0).
automaton("Alternate Response",s_2,b,s_2).
automaton("Alternate Response",s_0,b,s_0).
automaton("Alternate Response",s_2,a,s_2).
automaton("Alternate Response",s_2,c,s_2).
automaton("Alternate Response",s_0,c,s_0).
automaton("Alternate Response",s_1,c,s_1).

initial("Alternate Response",s_0).

accepting("Alternate Response",s_0).


automaton("Existence",s_1,a,s_1).
automaton("Existence",s_0,a,s_1).
automaton("Existence",s_1,c,s_1).
automaton("Existence",s_0,c,s_0).

initial("Existence",s_0).

accepting("Existence",s_1).


automaton("Exactly1",s_1,a,s_2).
automaton("Exactly1",s_0,a,s_1).
automaton("Exactly1",s_2,a,s_2).
automaton("Exactly1",s_2,c,s_2).
automaton("Exactly1",s_0,c,s_0).
automaton("Exactly1",s_1,c,s_1).

initial("Exactly1",s_0).

accepting("Exactly1",s_1).


automaton("Absence2",s_1,a,s_1).
automaton("Absence2",s_2,c,s_2).
automaton("Absence2",s_0,c,s_0).
automaton("Absence2",s_2,a,s_1).
automaton("Absence2",s_0,a,s_2).
automaton("Absence2",s_1,c,s_1).

initial("Absence2",s_0).

accepting("Absence2",s_0).
accepting("Absence2",s_2).


automaton("Not Chain Response",s_0,a,s_1).
automaton("Not Chain Response",s_1,c,s_0).
automaton("Not Chain Response",s_0,b,s_0).
automaton("Not Chain Response",s_1,a,s_1).
automaton("Not Chain Response",s_2,a,s_2).
automaton("Not Chain Response",s_2,b,s_2).
automaton("Not Chain Response",s_2,c,s_2).
automaton("Not Chain Response",s_0,c,s_0).
automaton("Not Chain Response",s_1,b,s_2).

initial("Not Chain Response",s_0).

accepting("Not Chain Response",s_0).
accepting("Not Chain Response",s_1).


automaton("Alternate Succession",s_0,b,s_1).
automaton("Alternate Succession",s_1,a,s_1).
automaton("Alternate Succession",s_2,c,s_2).
automaton("Alternate Succession",s_0,c,s_0).
automaton("Alternate Succession",s_2,a,s_1).
automaton("Alternate Succession",s_0,a,s_2).
automaton("Alternate Succession",s_1,b,s_1).
automaton("Alternate Succession",s_2,b,s_0).
automaton("Alternate Succession",s_1,c,s_1).

initial("Alternate Succession",s_0).

accepting("Alternate Succession",s_0).


automaton("Response",s_0,a,s_1).
automaton("Response",s_1,b,s_0).
automaton("Response",s_0,b,s_0).
automaton("Response",s_1,a,s_1).
automaton("Response",s_0,c,s_0).
automaton("Response",s_1,c,s_1).

initial("Response",s_0).

accepting("Response",s_0).


automaton("Chain Precedence",s_0,b,s_1).
automaton("Chain Precedence",s_0,c,s_1).
automaton("Chain Precedence",s_2,b,s_2).
automaton("Chain Precedence",s_2,a,s_2).
automaton("Chain Precedence",s_0,a,s_0).
automaton("Chain Precedence",s_2,c,s_2).
automaton("Chain Precedence",s_1,a,s_0).
automaton("Chain Precedence",s_1,b,s_2).
automaton("Chain Precedence",s_1,c,s_1).

initial("Chain Precedence",s_0).

accepting("Chain Precedence",s_0).
accepting("Chain Precedence",s_1).


automaton("Chain Succession",s_3,a,s_1).
automaton("Chain Succession",s_3,c,s_1).
automaton("Chain Succession",s_1,a,s_1).
automaton("Chain Succession",s_2,a,s_3).
automaton("Chain Succession",s_0,a,s_3).
automaton("Chain Succession",s_2,c,s_2).
automaton("Chain Succession",s_0,b,s_2).
automaton("Chain Succession",s_3,b,s_2).
automaton("Chain Succession",s_2,b,s_1).
automaton("Chain Succession",s_1,b,s_1).
automaton("Chain Succession",s_0,c,s_2).
automaton("Chain Succession",s_1,c,s_1).

initial("Chain Succession",s_0).

accepting("Chain Succession",s_0).
accepting("Chain Succession",s_2).


automaton("Precedence",s_0,b,s_1).
automaton("Precedence",s_2,b,s_2).
automaton("Precedence",s_1,a,s_1).
automaton("Precedence",s_2,a,s_2).
automaton("Precedence",s_2,c,s_2).
automaton("Precedence",s_0,c,s_0).
automaton("Precedence",s_0,a,s_2).
automaton("Precedence",s_1,b,s_1).
automaton("Precedence",s_1,c,s_1).

initial("Precedence",s_0).

accepting("Precedence",s_0).
accepting("Precedence",s_2).


automaton("Co-Existence",s_0,a,s_1).
automaton("Co-Existence",s_2,b,s_2).
automaton("Co-Existence",s_1,a,s_1).
automaton("Co-Existence",s_1,b,s_3).
automaton("Co-Existence",s_3,b,s_3).
automaton("Co-Existence",s_3,a,s_3).
automaton("Co-Existence",s_2,c,s_2).
automaton("Co-Existence",s_0,c,s_0).
automaton("Co-Existence",s_3,c,s_3).
automaton("Co-Existence",s_0,b,s_2).
automaton("Co-Existence",s_2,a,s_3).
automaton("Co-Existence",s_1,c,s_1).

initial("Co-Existence",s_0).

accepting("Co-Existence",s_0).
accepting("Co-Existence",s_3).


automaton("Succession",s_1,a,s_2).
automaton("Succession",s_2,a,s_2).
automaton("Succession",s_3,b,s_3).
automaton("Succession",s_0,b,s_3).
automaton("Succession",s_3,a,s_3).
automaton("Succession",s_2,c,s_2).
automaton("Succession",s_0,c,s_0).
automaton("Succession",s_3,c,s_3).
automaton("Succession",s_0,a,s_2).
automaton("Succession",s_2,b,s_1).
automaton("Succession",s_1,b,s_1).
automaton("Succession",s_1,c,s_1).

initial("Succession",s_0).

accepting("Succession",s_0).
accepting("Succession",s_1).


automaton("Absence",s_1,a,s_1).
automaton("Absence",s_0,a,s_1).
automaton("Absence",s_1,c,s_1).
automaton("Absence",s_0,c,s_0).

initial("Absence",s_0).

accepting("Absence",s_0).


automaton("Existence2",s_1,a,s_1).
automaton("Existence2",s_2,c,s_2).
automaton("Existence2",s_0,c,s_0).
automaton("Existence2",s_2,a,s_1).
automaton("Existence2",s_0,a,s_2).
automaton("Existence2",s_1,c,s_1).

initial("Existence2",s_0).

accepting("Existence2",s_1).


automaton("Init",s_0,a,s_1).
automaton("Init",s_1,a,s_1).
automaton("Init",s_2,a,s_2).
automaton("Init",s_2,c,s_2).
automaton("Init",s_0,c,s_2).
automaton("Init",s_1,c,s_1).

initial("Init",s_0).

accepting("Init",s_1).


automaton("Alternate Precedence",s_0,b,s_1).
automaton("Alternate Precedence",s_1,a,s_1).
automaton("Alternate Precedence",s_2,a,s_2).
automaton("Alternate Precedence",s_2,c,s_2).
automaton("Alternate Precedence",s_0,c,s_0).
automaton("Alternate Precedence",s_0,a,s_2).
automaton("Alternate Precedence",s_1,b,s_1).
automaton("Alternate Precedence",s_2,b,s_0).
automaton("Alternate Precedence",s_1,c,s_1).

initial("Alternate Precedence",s_0).

accepting("Alternate Precedence",s_0).
accepting("Alternate Precedence",s_2).


automaton("Not Responded Existence",s_0,a,s_1).
automaton("Not Responded Existence",s_2,b,s_2).
automaton("Not Responded Existence",s_1,a,s_1).
automaton("Not Responded Existence",s_1,b,s_3).
automaton("Not Responded Existence",s_3,b,s_3).
automaton("Not Responded Existence",s_3,a,s_3).
automaton("Not Responded Existence",s_2,c,s_2).
automaton("Not Responded Existence",s_0,c,s_0).
automaton("Not Responded Existence",s_3,c,s_3).
automaton("Not Responded Existence",s_0,b,s_2).
automaton("Not Responded Existence",s_2,a,s_3).
automaton("Not Responded Existence",s_1,c,s_1).

initial("Not Responded Existence",s_0).

accepting("Not Responded Existence",s_0).
accepting("Not Responded Existence",s_1).
accepting("Not Responded Existence",s_2).


automaton("Absence3",s_3,a,s_3).
automaton("Absence3",s_2,c,s_2).
automaton("Absence3",s_0,c,s_0).
automaton("Absence3",s_2,a,s_1).
automaton("Absence3",s_3,c,s_3).
automaton("Absence3",s_1,a,s_3).
automaton("Absence3",s_0,a,s_2).
automaton("Absence3",s_1,c,s_1).

initial("Absence3",s_0).

accepting("Absence3",s_0).
accepting("Absence3",s_1).
accepting("Absence3",s_2).


