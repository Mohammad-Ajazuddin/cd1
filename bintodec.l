%option noyywrap

%{
#include "y.tab.h"
int yylval=0;
%}

%%
[0] {yylval=atoi(yytext); return DIG1;}
[1] {yylval=atoi(yytext); return DIG2;}
[\n] return 0;
%%