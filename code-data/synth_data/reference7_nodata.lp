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
activation_condition(2,I,T) :- time(T), trace(I).

template(3,"Response").
activation(3,activity_6).
activation_condition(3,I,T) :- time(T), trace(I).
target(3,activity_7).
correlation_condition(3,I,T) :- time(T), trace(I).

template(4,"Chain Response").
activation(4,activity_8).
activation_condition(4,I,T) :- time(T), trace(I).
target(4,activity_9).
correlation_condition(4,I,T) :- time(T), trace(I).

template(5,"Existence").
activation(5,activity_10).
activation_condition(5,I,T) :- time(T), trace(I).

template(6,"Response").
activation(6,activity_11).
activation_condition(6,I,T) :- time(T), trace(I).
target(6,activity_12).
correlation_condition(6,I,T) :- time(T), trace(I).

