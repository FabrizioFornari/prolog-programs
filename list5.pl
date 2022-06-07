member( X, [X | Tail] ).

member( X, [Head | Tail] ) :-
    member( X, Tail).


conc( [ ], L, L).

conc( [X | L1], L2, [X | L3] ) :-
    conc( L1, L2, L3).
 

member1( X, L) :-
    conc( L1, [X |L2], L).
 
member2( X, L) :-
    conc( _, [X |_], L).

del( X, [X | Tail], Tail).

del( X, [Y | Tail], [Y | Tail1]) :-
   del( X, Tail, Tail1).

    