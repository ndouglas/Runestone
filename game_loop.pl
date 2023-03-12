% The game loop, such as it is.
game_loop :-
  % Initialize the game state.
  initialize_game_state(State),
  % Start the loop.
  game_loop(State).

% The game loop recursive predicate.
game_loop(State) :-
  % Display the current state of the game.
  display_game_state(State),
  % Get user input.  This is returned as a list of words.
  read_input(Words),
  % Process user input and update the game state.
  process_input(Words, State, NewState),
  % Check if the game is over.
  game_over(NewState),
  % If the game is not over, continue the loop with the updated game state.
  game_loop(NewState).
