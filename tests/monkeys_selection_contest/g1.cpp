#include <bits/stdc++.h>

int main() {
	int K;
	std::string receita;

	std::cin >> K;
	std::getline(std::cin >> std::ws, receita);

	for (auto c : receita) {
		if (c == ' ') {
			std::cout << ' ';
			continue;
		}

		std::cout << (char)((c - 'A' + K) % 26 + 'A');
	}

	std::cout << '\n';

	return 0;
}