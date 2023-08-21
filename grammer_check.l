%{
  #include<stdio.h>
  #include "y.tab.h"
  extern int yylval;
%}
%%
[abcde] {yylval=(yytext);return ID;}
. {return yytext[0];}
%%
int yywrap(){
    return 1;
}