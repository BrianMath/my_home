#include <stdio.h>

int strlen(const char *str) {
	int length = 0;
	while (str[length] != '\0') {
		length++;
	}
	return length;
}

int main() {
	char str[] = "Hello, world!";
	int length = strlen(str);
	printf("The length of the string is: %d\n", length);
	return 0;
}
