#include <stdio.h>

int (*func)() create1() {
	int value = 0;

	int inc() {
		return ++value;
	}

	return inc;
}


float volume(float a, float b, float c) {
	float base(float x, float y) {
		return x * y;
	}

	return base(a, b) * c;
}

int main() {
	float vol = volume(2, 3, 4);

	printf("volume: %f\n", vol);

	return 0;
}

