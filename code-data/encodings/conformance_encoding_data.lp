trace(I) :- trace(I,_,_).

trace_len(I,N) :- trace(I), N = #max {J : trace(I,_,J)}.

cur_state(K,I,S,0) :- trace(I),initial(Name,S),template(K,Name).

cur_state(K,I,S2,T) :- cur_state(K,I,S1,T-1), template(K,Name), automaton(Name,S1,c,S2), trace(I,A,T), not activation(K,A), not target(K,A).
cur_state(K,I,S2,T) :- cur_state(K,I,S1,T-1), template(K,Name), automaton(Name,S1,c,S2), trace(I,A,T), activation(K,A), not activation_condition(K,I,T).
cur_state(K,I,S2,T) :- cur_state(K,I,S1,T-1), template(K,Name), automaton(Name,S1,a,S2), trace(I,A,T), activation(K,A), activation_condition(K,I,T).
cur_state(K,I,S2,T) :- cur_state(K,I,S1,T-1), template(K,Name), automaton(Name,S1,c,S2), trace(I,A,T), target(K,A), not correlation_condition(K,I,T).
cur_state(K,I,S2,T) :- cur_state(K,I,S1,T-1), template(K,Name), automaton(Name,S1,b,S2), trace(I,A,T), target(K,A), correlation_condition(K,I,T).


sat(K,I,N) :- cur_state(K,I,S,N), trace_len(I,N), template(K,Name), accepting(Name,S). 

%#show .
#show sat/3.
