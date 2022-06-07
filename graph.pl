link( a,b).
link( b,d).
link( c,f).
link( d,f).
link( a,c).
link( c,d).
link( d,e).
link( f,a).

path( Node, Node).

path( StartNode, EndNode) :- 
   link( StartNode, NextNode),
   path( NextNode, EndNode).

