#include <stdio.h>

unsigned short idade1 = 20, idade2 = 40;
unsigned short min_idade;

int main() {
    if (idade1 <= idade2) {
        min_idade = idade1;
    } else {
        min_idade = idade2;
    }
	
    printf("%hu\n", min_idade);

	return 0;
}

