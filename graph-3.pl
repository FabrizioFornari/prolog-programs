link( a,b).
link( a,c).
link( b,d).
link( c,d).
link( c,f).
link( d,e).
link( d,f).
link( f,a).

path( Node, Node).  % StartNode and EndNode are both the same node

path( StartNode, EndNode) :- 
   link( StartNode, NextNode),
   path( NextNode, EndNode).

path( Node, Node, [Node]).	

path( StartNode, EndNode, [StartNode | Rest]) :- 
   link( StartNode, NextNode),
   path( NextNode, EndNode, Rest).

conc( [ ], L, L).

conc( [X | L1], L2, [X | L3] ) :-
    conc( L1, L2, L3).