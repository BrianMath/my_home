#include <stdio.h>

int main() {
	static int num = 1024, cont = 0;

	while (num/2 > 0) {
		num = num/2;
		cont++;
	}

	printf("%d\n", cont);

	return 0;
}

