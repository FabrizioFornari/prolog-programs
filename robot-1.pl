% State of the robot's world = state( RobotLocation, BasketLocation, RubbishLocation)
% action( State, Action, NewState): Action in State produces NewState
% We assume robot never drops rubbish to floor, and never pushes rubbish around
action( state( Pos, Pos, held),             % Robot and basket both at Pos, rubbish held by robot    
    drop,			                        % Action drop, Drop rubbish to baske
	state( Pos, Pos, in_basket) ).	    % After action: rubbish in basket

action( state( Pos1, Pos2, floor(Pos1)),    % Robot and rubbish both at Pos1
    pickup,                               % Pick up rubbish from floor
    state( Pos1, Pos2, held)).            % Rubbish now held by robot

action( state( Pos1, Pos1, Pos2),		    % Robot and basket both at Pos1
    push( Pos1, NewPos),		            % Push basket from Pos1 to NewPos
    state( NewPos, NewPos, Pos2)).	    % Robot and basket now at NewPos

action( state( Pos1, Pos2, Pos3),
    go( Pos1, NewPos1),	                    % Go from Pos1 to NewPos1
    state( NewPos1, Pos2, Pos3)).

plan( State, State, []).	                %Start state and goal state are equal, nothing to do

plan( State1, GoalState, [ Action1 | RestOfPlan]) :-
    action( State1, Action1, State2),		% Make first action resulting in State2
    plan( State2, GoalState, RestOfPlan). 	% Find rest of plan from State2
 
conc( [ ], L, L).

conc( [X | L1], L2, [X | L3] ) :-
    conc( L1, L2, L3).