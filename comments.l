%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
\/\/(.*) {};
\/\*(.*\n)*\*\/ {};
%%
int yywrap(){}

int main()
{
	yyin=fopen("commentsfile.c","r");
	yyout=fopen("withoutcomments.c","w");
	yylex();
	return 0;
}