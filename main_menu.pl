% Define the main menu predicate.
display_main_menu :-
  repeat,
  % Display the menu options.
  nl,
  write('.oO( Runestone )Oo.'), nl,
  write('N) Start new game'), nl,
  write('Q) Quit'), nl,
  nl,
  write('Enter your choice: '),
  % Read user input.
  get_char(Char),
  % Consume the newline character.
  get0(_),
  % Convert input character to uppercase.
  char_code(Char, Code),
  ((Code >= 97, Code =< 122) ->
    Input is Code - 32 % Convert lowercase to uppercase ASCII code
  ; true ->
    Input = Code % Keep uppercase characters as-is
  ),
  % Convert the uppercase code back to a character.
  char_code(UpperChar, Input),
  % Handle user input.
  (UpperChar = 'N' ->
    % Start a new game.
    game_loop,
    fail
  ; UpperChar = 'Q' ->
    % Quit the game.
    nl,
    write('Goodbye!'), nl,
    halt
  ; true ->
    % Invalid input.
    write('Invalid choice, please try again.'), nl,
    fail
  ).
