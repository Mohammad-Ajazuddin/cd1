%{
 #include<stdio.h>
%}
%token ID
%%
S:F A B F {printf("accept");return 0;};
A:A F F
 | ID ;
B:ID;
F:ID
;
%%
int main(){
    yyparse();
    return 0;
}
int yyerror(){
    printf("NOT accept");
}