:- use_module(library(clpr)).

convert( Centigrade, Fahrenheit) :-
    {Centigrade = ( Fahrenheit - 32)*5/9}.