#include <stdio.h>

int vet[] = {1, 2, 3, 4, 5};
int main() {
	int i = 4;
	int j = 0;
	while (i--) {
		j += vet[i+1];
	}

	printf("%d | %d\n", i, j);

	return 0;
}
