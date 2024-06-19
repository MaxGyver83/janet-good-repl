#!/bin/sh
# add -L/usr/local/lib if necessary:
cc -o janet-good-repl shell.c -ljanet
mkdir -p ~/.local/share/janet-good-repl
touch ~/.local/share/janet-good-repl/history
