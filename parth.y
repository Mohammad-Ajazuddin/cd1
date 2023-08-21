%{
    #include<stdio.h>
    int yylex(void);
    int k=0;
%}

%token ID

%%
S : E {printf("Valid count= %d",k);}
E : '(' E ')' {k++;}
| '{' E '}' {k++;}
| ID {}
| {}
;
%%
int main()
{
    printf("Enter= ");
    yyparse();
    return 0;
}

int yyerror()
{
    printf("Invalid");
}