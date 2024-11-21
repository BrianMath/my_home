#include <stdio.h>

char texto[20] = "Aruno, Bruno, Cruno";
char c;
unsigned short i = 0;
int main() {
	for (c = texto[i]; ; c = texto[++i]) {
		printf("%c", c);

		if (i >= 20)
			break;
	}

	printf("\n");

	return 0;
}
