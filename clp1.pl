:- use_module(library(clpr)).

convert( Centigrade, Fahrenheit) :-
    Centigrade is ( Fahrenheit - 32)*5/9.