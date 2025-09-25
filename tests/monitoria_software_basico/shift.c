#include <stdio.h>

int main() {
	int x = 0xA1B2C3D4;

	printf("%b\n", x);

	int y = (x >> 8);

	printf("%b\n", y);
	
	return 0;
}
