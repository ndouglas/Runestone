% Import our source files.
:- initialization(consult('title_screen.pl')).
:- initialization(consult('main_menu.pl')).
:- initialization(consult('game_loop.pl')).
:- initialization(consult('game_state.pl')).
:- initialization(consult('input.pl')).

% Entry point for the game. We display the title screen and main menu.
start :-
  display_title_screen,
  display_main_menu.
