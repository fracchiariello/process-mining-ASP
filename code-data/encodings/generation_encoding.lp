time(1..t). %t = lunghezza traccia

cur_state(K,S,0) :- initial(Name,S),template(K,Name).

{trace(A,T) : activity(A)} = 1 :- time(T).


cur_state(K,S2,T) :- cur_state(K,S1,T-1), template(K,Name), automaton(Name,S1,c,S2), trace(A,T), not activation(K,A), not target(K,A).
cur_state(K,S2,T) :- cur_state(K,S1,T-1), template(K,Name), automaton(Name,S1,a,S2), trace(A,T), activation(K,A).
cur_state(K,S2,T) :- cur_state(K,S1,T-1), template(K,Name), automaton(Name,S1,b,S2), trace(A,T), target(K,A).


sat(K) :- cur_state(K,S,t), template(K,Name), accepting(Name,S). 

:- template(K,_), not  sat(K).

%#show .
#show trace/2.


