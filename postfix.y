%{
#include<stdio.h>
int yylex(void);
%}

%token NUM
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'
%right NEG

%%
S : E {printf("\n");}
E : E '+' E {printf("+");}
| E '-' E {printf("-");}
| E '*' E {printf("*");}
| E '/' E {printf("/");}
| E '%' E {printf("%");}
| '-' E %prec NEG {printf("-");}
| '(' E ')' {};
| NUM {printf("%c",yylval);}
;
%%

int main()
{
    printf("Enter= ");
    yyparse();
}
int yyerror()
{
    printf("Error");
}