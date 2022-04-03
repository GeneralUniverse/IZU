greater(A,B,C):-
    A>B,
    C is A ,!;
    B>A,
    C is B.

lesser(A,B,C):-
    A<B,
    C is A ,!;
    B<A,
    C is B.

maximum([H],H).
maximum([H|T],X):-
    maximum(T,Y),
    greater(H,Y,X),!.

minimum([H],H).
minimum([H|T],X):-
    minimum(T,Y),
    lesser(H,Y,X),!.

isNeg(X):-
    X<0.

isPos(X):-
    X>=0. 

toAbs(X, Y) :- 
    isNeg(X),
    Y is -X,!;
    isPos(X),
    Y is X.

u13(LIN):-
    maximum(LIN,X),
    minimum(LIN,Y),
    toAbs(Y,Z),
    X>Z.

u13_1:- u13([22.15, 1, -23, 12, 6, -8, 2]).		% false
u13_2:- u13([22, 1.8, -23, 42.5, 6, -8, 2]).           	% true
u13_3:- u13([7]).                                       % false
u13_r:- write('Zadej LIN: '),read(LIN),u13(LIN).
