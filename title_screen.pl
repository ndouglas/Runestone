% Display the title screen.
display_title_screen :-
  % Display the opening text description.
  nl, nl,                                                                                 
  write('Welcome to...'), nl,
  nl,
  % Epic ASCII art.
  write(' ██▀███   █    ██  ███▄    █ ▓█████   ██████ ▄▄▄█████▓ ▒█████   ███▄    █ ▓█████ '), nl,
  write('▓██ ▒ ██▒ ██  ▓██▒ ██ ▀█   █ ▓█   ▀ ▒██    ▒ ▓  ██▒ ▓▒▒██▒  ██▒ ██ ▀█   █ ▓█   ▀ '), nl,
  write('▓██ ░▄█ ▒▓██  ▒██░▓██  ▀█ ██▒▒███   ░ ▓██▄   ▒ ▓██░ ▒░▒██░  ██▒▓██  ▀█ ██▒▒███   '), nl,
  write('▒██▀▀█▄  ▓▓█  ░██░▓██▒  ▐▌██▒▒▓█  ▄   ▒   ██▒░ ▓██▓ ░ ▒██   ██░▓██▒  ▐▌██▒▒▓█  ▄ '), nl,
  write('░██▓ ▒██▒▒▒█████▓ ▒██░   ▓██░░▒████▒▒██████▒▒  ▒██▒ ░ ░ ████▓▒░▒██░   ▓██░░▒████▒'), nl,
  write('░ ▒▓ ░▒▓░░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒ ░░ ▒░ ░▒ ▒▓▒ ▒ ░  ▒ ░░   ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░ ▒░ ░'), nl,
  write('  ░▒ ░ ▒░░░▒░ ░ ░ ░ ░░   ░ ▒░ ░ ░  ░░ ░▒  ░ ░    ░      ░ ▒ ▒░ ░ ░░   ░ ▒░ ░ ░  ░'), nl,
  write('  ░░   ░  ░░░ ░ ░    ░   ░ ░    ░   ░  ░  ░    ░      ░ ░ ░ ▒     ░   ░ ░    ░   '), nl,
  write('   ░        ░              ░    ░  ░      ░               ░ ░           ░    ░  ░'), nl,
  nl,
  % Semi-epic subtitle.
  write('A text-based adventure game written in Prolog.'), nl,                                                                                
  nl, nl.
