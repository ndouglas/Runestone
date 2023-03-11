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
  get_char(Input),
  % Consume the newline character.
  get0(_),
  % Convert input character to uppercase.
  (char_type(Char, lower) ->
    % Convert lowercase to uppercase ASCII code.
    Input is Char - 32 
  ; otherwise ->
    % Keep uppercase characters as-is.
    Input = Char 
  ),
  % Handle user input.
  (Input = 'N' ->
    % Start a new game.
    write('Hello!'), nl,
    fail
  ; Input = 'Q' ->
    % Quit the program.
    write('Goodbye!'), nl,
    halt
  ; otherwise ->
    % Invalid input.
    write('Invalid choice, please try again.'), nl,
    fail
  ).
