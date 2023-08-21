%{
#include<stdio.h>
int flag = 0;
%}
%%
[6789][0-9]{9} {flag=1;}
. ;
%%
int yywrap(){}

int main()
{
printf("Enter a Mobile Number\n");
yylex();

if(flag==1)
{
	printf("Valid Mobile Number\n");
}
else
	printf("Invalid Mobile Number\n");
}