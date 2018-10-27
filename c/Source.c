#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	printf("Starting number: ");
	int start=0, end = 0,number =0;
	scanf("%d", &start);
	printf("Last number: ");
	scanf("%d", &end);
	number = start;
	for (int i = 0; i <= (end-start); i++)
	{
		
		
		if (number % 3 == 0 && number % 5 == 0)
		{
			printf("Fizz Buzz\n");
			
		}
		else if (number % 3 == 0)
		{
			printf("Fizz\n");
			
		}
		else if (number % 5 == 0)
		{
			printf("Buzz\n");
			
		}
		else
		{
			printf("%d\n",number);
			
		}
		number++;
	}
	getchar();
	getchar();
	return 0;
}