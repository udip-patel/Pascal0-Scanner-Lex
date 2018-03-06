Pascal 0 scanner:

to run on linux, do the following in cmd:

flex pascal_scanner.lex
gcc lex.yy.c -lfl
./a.out < input.txt
