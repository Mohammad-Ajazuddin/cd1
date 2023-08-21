%option noyywrap

%{
#include "y.tab.h"    
%}

%%
[a-z]+ {return ID;}
[()] {return yytext[0];}
[{}] {return yytext[0];}
[\n] return 0;
%%