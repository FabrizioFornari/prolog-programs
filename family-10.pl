parent(pam,bob).        % Pam is a parent of Bob
parent(tom,bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

female(pam).            % Pam is female
female(liz).
female(pat).
female(ann).

male(tom).              % Tom is male
male(bob).
male(jim).

mother(X, Y) :-         % X is the mother of Y if
    parent(X,Y),        % X is a parent of Y and
    female(X).          % X is female

grandparent(X, Z) :-    % X is grandparent of Z if
    parent( X,Y),       %X is parent of Y and
    parent( Y,Z).       % Y is parent of Z

sister( X, Y):-         % X is sister of Y if
    parent( Z, X),      
    parent( Z, Y),      % X and Y have the same parent and
    female( X),         % X is female and
    X \= Y.             % X and Y are different
 
ancestor( X, Z):-      % Rule a1: X is ancestor of Z
    parent( X, Z).

ancestor( X, Z):-       % Rule a2: X is ancestor of Z
    parent(X, Y),
    ancestor( Y, Z).
