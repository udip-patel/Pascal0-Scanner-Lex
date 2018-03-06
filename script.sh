#!/bin/bash
flex pascal_scanner.lex
cc -std=c99 lex.yy.c -lfl -w
PROMPT="Enter the file to scan like so: ./a.out < filename.extension"
echo $PROMPT

