#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#define ALPHABET_LEN 26

int encode(int ch, int rotate)
{
    const char lalphabet[3*ALPHABET_LEN] = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz";
	const char ualphabet[3*ALPHABET_LEN] = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ";

    if (islower(ch))
        return lalphabet[ch-'a'+rotate+26];
	else if(isupper(ch))
		return ualphabet[ch-'A'+rotate+26];
    else
        return ch;
}

int main(int argc, char *argv[])
{
    if (argc < 2) {
        puts("Usage: caesar rotateN\n");
        return 0;
    }
    int rotatorN = -atoi(argv[1]) % ALPHABET_LEN;

    for (int ch = getchar(); ch != EOF; ch = getchar()) {
            putchar(encode(ch, rotatorN));
    }
    putchar('\n');
}
