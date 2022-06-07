member( X, [X | Tail] ).

member( X, [Head | Tail] ) :-
    member( X, Tail).


conc( [ ], L, L).

conc( [X | L1], L2, [X | L3] ) :-
    conc( L1, L2, L3).
 

member1( X, L) :-
    conc( _, [X |_], L).

del( X, [X | Tail], Tail).

del( X, [Y | Tail], [Y | Tail1]) :-
   del( X, Tail, Tail1).

insert( X, List, BiggerList) :-
    del( X, BiggerList, List).
 
member2( X, List) :-
    del( X, List, _).   

sublist( S, L) :-
    conc( L1, L2, L),
    conc( S, L3, L2).

max( X, Y, X) :-
    X >= Y.

max( X, Y, Y) :-
    Y > X.

