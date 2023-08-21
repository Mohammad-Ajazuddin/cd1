%{
#include<stdio.h>
int yylex(void);
%}

%token DIG1 DIG2

%%
A : E {printf("Decimal= %d",$$);}
E : E B {$$=2*$1+$2;}
E : B {$$=$1;}
B : DIG1 {$$=$1;}
B : DIG2 {$$=$1;}
;
%%

int main()
{
    printf("Enter= ");
    yyparse();
}
int yyerror(){
    printf("Error");
}