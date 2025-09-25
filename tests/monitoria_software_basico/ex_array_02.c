#include <stdio.h>

extern int nums[3];
extern void aux();

int main() {
	//short i = 1;
	//nums[0] = i;
	//nums[i] = 2;
	//nums[2] = nums[i-1] + nums[i];
	aux();

	for (int i = 0; i < 3; i++) {
		printf("nums[%d] = %d\n", i, nums[i]);
	}

	return 0;
}
