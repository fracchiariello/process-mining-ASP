template(0,"Response").
activation(0,activity_1).
activation_condition(0,I,T) :- assigned_value(I,integer,V,T),V>10.
target(0,activity_2).
correlation_condition(0,I,T) :- assigned_value(I,integer,V,T),V>10.

template(1,"Chain Response").
activation(1,activity_3).
activation_condition(1,I,T) :- assigned_value(I,categorical,c1,T).
target(1,activity_4).
correlation_condition(1,I,T) :- assigned_value(I,categorical,c2,T).

template(2,"Absence").
activation(2,activity_5).
activation_condition(2,I,T) :- assigned_value(I,categorical,c3,T).

template(3,"Response").
activation(3,activity_6).
activation_condition(3,I,T) :- assigned_value(I,integer,V,T),V>10.
target(3,activity_7).
correlation_condition(3,I,T) :- assigned_value(I,integer,V,T),V>10.

template(4,"Chain Response").
activation(4,activity_8).
activation_condition(4,I,T) :- assigned_value(I,categorical,c1,T).
target(4,activity_9).
correlation_condition(4,I,T) :- assigned_value(I,categorical,c2,T).

