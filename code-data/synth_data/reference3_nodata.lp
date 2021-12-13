template(0,"Response").
activation(0,activity_1).
activation_condition(0,I,T) :- time(T), trace(I).
target(0,activity_2).
correlation_condition(0,I,T) :- time(T), trace(I).

template(1,"Chain Response").
activation(1,activity_3).
activation_condition(1,I,T) :- time(T), trace(I).
target(1,activity_4).
correlation_condition(1,I,T) :- time(T), trace(I).

template(2,"Absence").
activation(2,activity_5).
activation_condition(2,I,T) :-  time(T), trace(I).

