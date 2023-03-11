# Runestone

Runestone is a text adventure game written in (GNU) Prolog.  It's inspired by classic text adventures like _Zork_.  I'm writing it to sharpen my Prolog skills, learn a little about parsing, and basically bring meaning to my life tbh I don't have a whole lot going on.  Soon I'll release this and it'll set the world afire and bring in the big bucks 😎

## How to Play

To play Runestone, you will need to have a Prolog interpreter installed on your computer. Once you have installed Prolog, you can run the game by loading the `runestone.pl` file into the interpreter and executing the `start` predicate.  I don't know how it's gonna work after that.  Let's find out together.

## Contributing

If you would like to contribute to Runestone, you can do so by opening a pull request. Please ensure that your changes are well-documented and follow the established coding conventions. Just what those conventions are, I don't know.  LOL.

## Credits

The name of the game is inspired by Runestone, from the world of _A Song of Ice and Fire_ by George R.R. Martin, but the game is not set in that universe and is not affiliated with the franchise in any way.

## License

Runestone is released under the Unlicense, which means it is dedicated to the public domain. You are free to use, modify, and distribute the code as you see fit, without any attribution or restrictions. Please see the UNLICENSE file for more information.

## Progress

This is literally it:

```
🦑nathan@Greyjoy:~/Projects/Runestone
$ gprolog
GNU Prolog 1.5.0 (64 bits)
Compiled Oct 29 2021, 07:27:11 with clang
Copyright (C) 1999-2021 Daniel Diaz

| ?- ['runestone.pl']. start.
compiling /Users/nathan/Projects/Runestone/runestone.pl for byte code...
/Users/nathan/Projects/Runestone/runestone.pl compiled, 8 lines read - 471 bytes written, 4 ms
compiling /Users/nathan/Projects/Runestone/title_screen.pl for byte code...
/Users/nathan/Projects/Runestone/title_screen.pl compiled, 18 lines read - 10970 bytes written, 4 ms
compiling /Users/nathan/Projects/Runestone/main_menu.pl for byte code...
/Users/nathan/Projects/Runestone/main_menu.pl compiled, 37 lines read - 3268 bytes written, 3 ms

(1 ms) yes


Welcome to...

 ██▀███   █    ██  ███▄    █ ▓█████   ██████ ▄▄▄█████▓ ▒█████   ███▄    █ ▓█████ 
▓██ ▒ ██▒ ██  ▓██▒ ██ ▀█   █ ▓█   ▀ ▒██    ▒ ▓  ██▒ ▓▒▒██▒  ██▒ ██ ▀█   █ ▓█   ▀ 
▓██ ░▄█ ▒▓██  ▒██░▓██  ▀█ ██▒▒███   ░ ▓██▄   ▒ ▓██░ ▒░▒██░  ██▒▓██  ▀█ ██▒▒███   
▒██▀▀█▄  ▓▓█  ░██░▓██▒  ▐▌██▒▒▓█  ▄   ▒   ██▒░ ▓██▓ ░ ▒██   ██░▓██▒  ▐▌██▒▒▓█  ▄ 
░██▓ ▒██▒▒▒█████▓ ▒██░   ▓██░░▒████▒▒██████▒▒  ▒██▒ ░ ░ ████▓▒░▒██░   ▓██░░▒████▒
░ ▒▓ ░▒▓░░▒▓▒ ▒ ▒ ░ ▒░   ▒ ▒ ░░ ▒░ ░▒ ▒▓▒ ▒ ░  ▒ ░░   ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░ ▒░ ░
  ░▒ ░ ▒░░░▒░ ░ ░ ░ ░░   ░ ▒░ ░ ░  ░░ ░▒  ░ ░    ░      ░ ▒ ▒░ ░ ░░   ░ ▒░ ░ ░  ░
  ░░   ░  ░░░ ░ ░    ░   ░ ░    ░   ░  ░  ░    ░      ░ ░ ░ ▒     ░   ░ ░    ░   
   ░        ░              ░    ░  ░      ░               ░ ░           ░    ░  ░

A text-based adventure game written in Prolog.



.oO( Runestone )Oo.
N) Start new game
Q) Quit
```
