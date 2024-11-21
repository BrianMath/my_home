#include <stdio.h>

int main() {
	unsigned int num = 0xAABBCCDD, num1 = 0x000000FF;
	unsigned int mask = 0xFF;

	unsigned char nums[4] = {0xBE, 0xBA, 0xCA, 0xFE};

	printf("%.8x - %p\n", num & mask, &num);
	mask = mask << 8;
	printf("%.8x\n", num & mask);
	mask = mask << 8;
	printf("%.8x\n", num & mask);
	mask = mask << 8;
	printf("%.8x\n", num & mask);

	printf("===========================================\n");

	for (int i = 0; i < 4; i++) {
		printf("%.2x - %p\n", nums[i], &nums[i]);
	}

	return 0;
}
