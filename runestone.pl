% Import our source files.
:- initialization(consult('title_screen.pl')).
:- initialization(consult('main_menu.pl')).

% Call the display/0 predicate from the title_screen module.
start :-
  display_title_screen,
  display_main_menu.
