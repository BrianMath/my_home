#include <stdio.h>

int main() {
	bool isBig = false;
	unsigned int num;
	auto string = "olá, mundo";
	auto inteiro = 1;
	auto decimal = 3.14;
	auto booleano = true;
	auto caracter = ',';

	printf("%s\n", string);
	printf("%d\n", inteiro);
	printf("%f\n", decimal);
	printf("%u\n", booleano);
	printf("%c\n", caracter);

	printf("%d\n", isBig);

	scanf("%b", &num);
	printf("\n%b - %d\n", num, num);

	return 0;
}
