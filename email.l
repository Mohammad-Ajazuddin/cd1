%{
#include<stdio.h>
%}
%%
[a-zA-Z_]+[0-9\.\-_]*[@](gmail|yahoo|rgukt)(.com|.in|.edu|.ac)+ {printf("Valid Email ID");}
.* {printf("Invalid Email ID");}
%%

int yywrap(){}

int main()
{
	printf("Enter an Email:\n");
	yylex();
	return 0;
}