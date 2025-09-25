#include <bits/stdc++.h>

int main() {
	std::string linha;
	size_t max = 1, temp = 1;
	
	getline(std::cin, linha);

	for (size_t i = 0; i < linha.length()-1; i++) {
		if (linha[i] != linha[i+1]) {
			temp++;
		} else {
			if (temp > max) {
				max = temp;
			}
			
			temp = 1;
		}
	}

	max = temp > max ? temp : max;

	std::cout << max << '\n';

	return 0;
}