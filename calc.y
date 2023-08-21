%{
#include<stdio.h>
int flag=0;
void yyerror();
%}

%token NUMBER
%left '+' '-'
%left '*' '/' '%'
%left '('')'

%%
AE:E {printf("\nResult = %d\n",$$);}
E:E'+'E {$$=$1+$3;}
|E'-'E {$$=$1-$3;}
|E'*'E {$$=$1*$3;}
|E'/'E {$$=$1/$3;}
|E'%'E {$$=$1%$3;}
|'('E')' {$$=$2;}
|NUMBER {$$=$1;}
;
%%

int main()
{
	printf("Enter exp:\n");
	yyparse();
	if(flag==0)
	{
		printf("Valid Exp\n");
	}
	return 0;
}

void yyerror()
{
	printf("Invalid Exp\n");
	flag=1;
}