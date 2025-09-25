#include <stdio.h>

int elevado(int n, int exp) {
	if (exp == 0) { return 1; }

	while (--exp) {
		n *= n;
	}

	return n;
}

int main() {
	int num = 69;			// %r8d
	num = elevado(num, 2);
	printf("%d\n", num);

	return 0;
}
