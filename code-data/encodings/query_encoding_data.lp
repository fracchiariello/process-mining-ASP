trace(I) :- trace(I,_,_).

trace_len(I,N) :- trace(I), N = #max {J : trace(I,_,J)}.


{activation(A) : activity(A)} = 1. 
{target(A) : activity(A)} = 1. 
:- activation(A), target(A).

cur_state(I,S,0) :- trace(I),initial(Name,S),template(Name).

cur_state(I,S2,T) :- cur_state(I,S1,T-1), template(Name), automaton(Name,S1,c,S2), trace(I,A,T), not activation(A), not target(A).
cur_state(I,S2,T) :- cur_state(I,S1,T-1), template(Name), automaton(Name,S1,c,S2), trace(I,A,T), activation(A), not activation_condition(I,T).
cur_state(I,S2,T) :- cur_state(I,S1,T-1), template(Name), automaton(Name,S1,a,S2), trace(I,A,T), activation(A), activation_condition(I,T).
cur_state(I,S2,T) :- cur_state(I,S1,T-1), template(Name), automaton(Name,S1,c,S2), trace(I,A,T), target(A), not correlation_condition(I,T).
cur_state(I,S2,T) :- cur_state(I,S1,T-1), template(Name), automaton(Name,S1,b,S2), trace(I,A,T), target(A), correlation_condition(I,T).


:- cur_state(I,S,N), trace_len(I,N), template(Name), not accepting(Name,S).

#show activation/1.
#show target/1.

