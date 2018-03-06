%{
	#include <stdio.h>
%}

white_space	[ \t\n]+
comments	"{"[^}\n]*"}"
digit		[0-9]
identifier	[a-zA-Z_][a-zA-Z0-9]*

%%

for		printf("test");
{comments}	printf("comment detected");
{digit}		printf("digit");
{identifier}	printf("identifier\n");
{white_space}	/* do nothing */
.				printf("unidentified character");
%%
