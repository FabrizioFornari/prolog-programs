big( bears).        % Clause 1
big( elephants).    % Clause 2
small( cats).       % Clause 3

brown( bears).      % Clause 4
black( cats).       % Clause 5
gray( elephants).   % Clause 6

dark( Z) :-         % Clause 7: Anything black is dark
    black( Z).      
 
 dark( Z) :-        % Clause 8: Anything brown is dark
    brown( Z).
 