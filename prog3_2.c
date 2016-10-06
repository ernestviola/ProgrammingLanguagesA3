#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
	char a = *(argv[1]);
	char e;
	scanf("%c", &e);
	printf("%i\n", e - a);

}
