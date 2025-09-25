#include <bits/stdc++.h>

int main() {
	int K;
	std::string receita;
	std::string letras = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	std::cin >> K;
	std::getline(std::cin >> std::ws, receita);

	for (size_t i = 0; i < receita.length(); i++) {
		char letra = receita[i];

		if (letra != ' ') {
			int pos = letras.find(letra);
			receita[i] = letras[(pos + K) % 26];
		}
	}

	std::cout << receita << '\n';

	return 0;
}