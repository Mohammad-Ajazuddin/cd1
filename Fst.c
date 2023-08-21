#include<stdio.h>
#include<ctype.h>

char prods[20][20];
int ps;
void addres(char arr[],char x)
{
	int i;
	for(i=0;arr[i]!='\0';i++)
	{
		if(arr[i]==x)
		{
			return;
		}
	}
	arr[i]=x;
	arr[i+1]='\0';
}

void first(char res[],char f)
{
	int i;
	char subres[20];
	int fe = 0;
	res[0]='\0';
	subres[0]='\0';
	if(islower(f))
	{
		addres(res,f);
		return;
	}
		for(i=0;i<ps;i++)
		{	
			if(prods[i][0]==f)
			{
				if(prods[i][2]=='$')
				{
					addres(res,'$');	
				}
				else
				{
					int j=2;
					while(prods[i][j]!='\0')
					{
						first(subres,prods[i][j]);
						for(int k=0;subres[k]!='\0';k++)
						{
							addres(res,subres[k]);	
						}
						for(int k=0;subres[k]!='\0';k++)
						{
							if(subres[k]=='$')
							{
								fe=1;
								break;
							}
						}
						if(fe==1)
						{
							j++;	
						}
						else
						{
							break;	
						}	
					}	
				}	
			}
		}
		return;
}

int main()
{
	int c=0;
	char f;
	char res[20];
	printf("No. of prods\n");
	scanf("%d",&ps);
	printf("Enter prods\n");
	for(int i=0;i<ps;i++)
	{
		scanf("%s",prods[i]);
	}
	do{
		printf("Find first of \n");
		scanf(" %c",&f);
		first(res,f);
		printf("First of %c \n",f);
		int i;
		for(i=0;res[i]!='\0';i++)
		{
			printf("%c ",res[i]);
		}
		printf("\n 1 to continue \n");
		scanf("%d",&c);
	}
	while(c);
	return 0;
}