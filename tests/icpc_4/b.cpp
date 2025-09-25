#include <bits/stdc++.h>

#define MAX 1000000
size_t freq[MAX];
size_t pref[MAX+1];

int main() {
	size_t len;
	std::cin >> len;

	size_t seq[len];

	// Entrada e frequência
	size_t num;
	size_t max = 0;
	for (size_t i = 0; i < len; i++) {
		std::cin >> num;
		seq[i] = num; 		// sequência de valores
		freq[num]++;		// frequência dos números
		
		if (num > max) {
			max = num;
		}
	}

	// Soma de prefixo de frequência
	for (size_t i = 1; i <= max; i++) {
		pref[i] = pref[i-1] + freq[i] * i;
	}

	max = pref[max];
	for (size_t i = 0; i < len; i++) {
		std::cout << max - pref[seq[i]] << ' ';
	}
	
	std::cout << '\n';

	return 0;
}