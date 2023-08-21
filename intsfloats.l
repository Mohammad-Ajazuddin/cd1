%{
#include<stdio.h>
int intc=0,fc=0;
%}
%%
[0-9]+ {ECHO; printf("->Integer No\n"),intc++;}
[0-9]+"."[0-9]+ {ECHO; printf("->Float No\n"),fc++;}
%%

int yywrap(){}

int main()
{
	printf("Enter No.s\n");
	yylex();
	printf("Total Integers = %d Floats=%d\n",intc,fc);
	return 0;
}