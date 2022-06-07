:- use_module(library(clpr)).

convert( Centigrade, Fahrenheit) :-
    {Centigrade = ( Fahrenheit - 32)*5/9}.

fib( N,F) :-
    N = 0, F = 1
    ;
    N = 1, F = 1
    ;
    N>=2,
    N1 is N -1, fib(N1,F1),
    N2 is N -2, fib(N2,F2),
    F is F1 + F2.
 