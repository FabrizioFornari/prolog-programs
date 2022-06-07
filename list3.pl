member( X, [X | Tail] ).

member( X, [Head | Tail] ) :-
    member( X, Tail).


conc( [ ], L, L).

conc( [X | L1], L2, [X | L3] ) :-
    conc( L1, L2, L3).
 

member1( X, L) :-
    conc( L1, [X |L2], L).
 