%{
#include<stdio.h>
int lc=0,ch=0,sc=0,tc=0,wc=0,onelwc=0;
%}
%%
[a-zA-Z0-9]+ {wc++;ch=ch+yyleng;}
\n {lc++;}
\t {tc++;}
[ ]+ {sc++;}
. {ch++;onelwc++;}
%%

int yywrap(){}

int main()
{
	yylex();
	printf("Lines %d\n",lc);
	printf("spaces %d\n",sc);
	printf("Tabs %d\n",tc);
	printf("chars %d\n",ch);
	printf("words %d\n",wc+onelwc);
	return 0;
}