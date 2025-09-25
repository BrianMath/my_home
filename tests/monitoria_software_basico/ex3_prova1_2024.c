#include <stdio.h>
#include <string.h>

struct Z {
	int size;
	short *ptr;
	char str[8];
};

union W {
	struct Z z;
	short *s;
};

union W w;

void dump(void *addr, int n) {
	unsigned char *p = (unsigned char*)addr;
	while (n--) { printf("%p - %c\n", p, *p); p++; }
}

int main() {
	w.s = (short*)&w;

	strcpy(w.z.str, "FLUTUAR");
	w.z.ptr = (short*)w.z.str;

	w.s[4] = w.z.ptr[3];
	
	dump(&w, sizeof(w));

	return 0;
}
