%{
#include<stdio.h>
int size=0;
void fun(int);
%}
%%
[a-zA-Z0-9]+ {size=yyleng;fun(size);}
. ;
%%

void fun(int size){	
	if((yytext[0]=='a' || yytext[0]=='A') && (yytext[size-1]=='b'|| yytext[size-1]=='B'))
	{
		printf("String starting with A and ending with B %s\n",yytext);
	}
}

int yywrap(){}

int main(){
	printf("Enter your strings\n");
	yylex();
	return 0;
}