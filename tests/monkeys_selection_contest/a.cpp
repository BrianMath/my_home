#include <bits/stdc++.h>



int main() {
	int qtdJogadores, qtdPalavras;
	std::string jogador, palavra;
	std::vector<std::pair<std::string, std::string>> jogadores;
	std::map<std::string, int> mapa;

	std::cin >> qtdJogadores >> qtdPalavras;
	
	while (qtdPalavras--) {
		std::cin >> palavra;
		mapa.insert({palavra, 0});
	}

	int temp = qtdJogadores;
	while (temp--) {
		std::cin >> jogador;
		std::cin >> palavra;

		jogadores.push_back({jogador, palavra});

		auto search = mapa.find(palavra);
		// Encontrou
		if (search != mapa.cend()) {
			if (search->second == 0) {
				search->second = 10;
			} else if (search->second == 10) {
				search->second = 5;
			}
		}
	}

	for (int i = 0; i < qtdJogadores; i++) {
		int pontos;

		auto search = mapa.find(jogadores[i].second);
		if (search == mapa.cend()) {
			pontos = 0;
		} else {
			pontos = search->second;
		}

		std::cout << jogadores[i].first << " " << pontos << '\n';
	}

	return 0;
}
