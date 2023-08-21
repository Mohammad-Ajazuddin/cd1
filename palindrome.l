%option noyywrap

%{
#include<stdio.h>
int i=0;int j=0;
int temp=0;
%}

%%
[a-z]+ {fun(yyleng);}
[\n] return 0;
%%

void fun(int len)
{
    for(i=0,j=len-1;i<len,j>=0;i++,j--){
        if(yytext[i]!=yytext[j]){
            temp=1;
            break;
        }
    }
    if(temp==0) printf("Palindrome");
    else printf("Not Palindrome");
}
int main()
{
    printf("Enter= ");
    yylex();
}