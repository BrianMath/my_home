#include <stdio.h>

asm (".globl num\n\t"
	 ".align 4\n\t"
	 "num: .int 10\n\t");

int new_id() {
	static int id = 1;
	int tmp = id;
	id++;
	return tmp;
}

extern int num;

int main() {
	printf("id: %d\n", new_id());
	printf("id: %d\n", new_id());
	printf("id: %d\n", new_id());
	printf("id: %d\n", new_id());
	printf("id: %d\n", new_id());

	printf("%d\n", num);

	return 0;
}
