#include <stdio.h>

int solution(int A[], int N) {
	int length = 1, i = 0, value = 0;

	while(value = A[i], value != -1) {
		length++;
		i = value;
	}

	return length;
}

int main() {
	int N = 5;
	int A[] = {1, 4, -1, 3, 2};
	
	printf("length: %d\n", solution(A, N));

	return 0;
}
