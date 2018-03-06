%{
	#include <stdio.h>
%}

WHITE_SPACE	[ \t\n]+
COMMENTS	"{"[^}\n]*"}"
DIGIT		[0-9]
IDENTIFIER	[a-zA-Z_][a-zA-Z0-9]*

%%

\*				printf("TimesSym\n");
div				printf("DivSym\n");
mod				printf("ModSym\n");
and				printf("AndSym\n");
or				printf("OrSym\n");
\+				printf("PlusSym\n");
\-				printf("MinusSym\n");
\=				printf("EqlSym\n");
\<>				printf("NeqSym\n");
\<				printf("LessSym\n");
\>				printf("GtrSym\n");
\<=				printf("LeqSym\n");
\>=				printf("GeqSym\n");
\.				printf("PeriodSym\n");
,				printf("CommaSym\n");
:				printf("ColonSym\n");
\(				printf("LparenSym\n");
\)				printf("RparenSym\n");
\[				printf("LbrakSym\n");
\]				printf("RbrakSym\n");
of				printf("OfSym\n");
then			printf("ThenSym\n");
do				printf("DoSym\n");
not				printf("NotSym\n");
:=				printf("BecomesSym\n");
;				printf("SimcolonSym\n");
begin			printf("BeginSym\n");
end				printf("EndSym\n");
if				printf("IfSym\n");
else			printf("ElseSym\n");
while			printf("WhileSym\n");
array			printf("ArraySym\n");
record			printf("RecordSym\n");
const			printf("ConstSym\n");
type			printf("TypeSym\n");
var				printf("VarSym\n");
procedure		printf("ProcedureSym\n");
program			printf("ProgramSym\n");

{DIGIT}			printf("NumberSym (value: %s)\n", yytext);
{IDENTIFIER}	printf("IdentSym (value: %s)\n", yytext);
{COMMENTS}		/* do nothing */
{WHITE_SPACE}	/* do nothing */
.				printf("null (unrecognized character: %s)\n", yytext); /*unidentified characters */
<<EOF>>			{
					printf("EndOfSym\n\n");
					yyterminate();
				}
%%

main(){
	printf("\n*******PASCAL SCANNER********\n\n");
	yylex();
}
