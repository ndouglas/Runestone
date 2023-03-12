% Read a stream of characters into a list of characters.
read_line(Stream, Chars) :-
  % Read the next character from the stream.
  get_char(Stream, Char),
  % Process the next line.
  read_line(Char, Stream, Chars).
 
% If the next character is a newline, return an empty list.
read_line('\n', _, []) :- !.

% If the next character is not a newline, append its code to the list.
read_line(Code, Stream, [Code|Codes]) :-
  read_line(Stream, Codes).

% Read a line of text from the user and split it into words.
read_input(Words) :-
  % Prompt the user for input.
  write('> '),
  % Read a line of text from standard input.
  read_line_to_codes(user_input, Line),
  % Convert the line to an atom.
  atom_codes(Atom, Line),
  % Split the line into words.
  split_input(Atom, Words).

% Split an atom into a list of words.
split_input(Atom, Words) :-
  % Convert the atom to a list of character codes.
  atom_codes(Atom, Codes),
  % Split the list of codes into words.
  split_words(Codes, WordCodesList),
  % Convert each list of word codes to an atom.
  maplist(atom_codes, Words, WordCodesList).

% Split a list of character codes into a list of word character code lists.
split_words([], []) :- !.
split_words(InputCodes, [WordCodes|Words]) :-
  % Skip leading whitespace characters.
  skip_whitespaces(InputCodes, RestCodes),
  % Extract the next word.
  extract_word(RestCodes, WordCodes, NextCodes),
  % Continue processing the remaining codes.
  split_words(NextCodes, Words).

% Skip leading whitespace characters.
skip_whitespaces([], []) :- !.
skip_whitespaces([Code|InputCodes], RestCodes) :-
  % Use code_type to check if the code is a whitespace character.
  (code_type(Code, space) ->
    skip_whitespaces(InputCodes, RestCodes)
  ; true ->
    RestCodes = [Code|InputCodes]
  ).

% Extract the next word from a list of character codes.
extract_word([], [], []) :- !.
extract_word([Code|InputCodes], [Code|WordCodes], NextCodes) :-
  % Use code_type to check if the code is a whitespace character.
  (code_type(Code, space) ->
    NextCodes = InputCodes,
    WordCodes = []
  ; true ->
    extract_word(InputCodes, WordCodes, NextCodes)
  ).

atom_codes(Atom, Codes) :-
  name(Atom, Codes).

% Read a line of input as a list of character codes.
read_line_to_codes(Stream, Codes) :-
  % Read the next character from the stream.
  get_code(Stream, Code),
  % Process the next line.
  read_line_to_codes(Code, Stream, Codes).
 
% If the next character is a newline, return an empty list.
read_line_to_codes(10, _, []) :- !.

% If the next character is not a newline, append it to the list of codes.
read_line_to_codes(Code, Stream, [Code|Codes]) :-
  read_line_to_codes(Stream, Codes).

code_type(Code, Type) :-
  (Type = digit, between(0'0, 0'9, Code)) ;
  (Type = digit, between(0'A, 0'Z, Code)) ;
  (Type = digit, between(0'a, 0'z, Code)) ;
  (Type = space, member(Code, [0' , 0'\t, 0'\n, 0'\r])) ;
  (Type = symbol, \+ atom_codes(Symbol, [Code]), atom_length(Symbol, 1)).
