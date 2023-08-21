%option noyywrap

%{
#include "postfix.tab.h"
int yylval=0;
%}

%%
[a-z]+ {yylval=*yytext;
            return NUM;}
[\n] return 0;
. return yytext[0];
%%