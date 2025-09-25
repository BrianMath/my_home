#include <bits/stdc++.h>

bool isvowel(char c) {
	return isalpha(c) && (c == 'a' | c == 'e' | c == 'i' | c == 'o' | c == 'u' |
						  c == 'A' | c == 'E' | c == 'I' | c == 'O' | c == 'U');
}

int main() {
	std::string endereco;
	std::getline(std::cin, endereco);
	int cont = 0;

	for (char c : endereco) {
		if (isvowel(c)) {
			cont++;
		}
	}

	std::cout << cont%3 << '\n';

	return 0;
}