#include <bits/stdc++.h>

int main() {
    int N, M;
	std::string vote;
	std::cin >> N >> M;

	std::vector<std::string> people;
	std::vector<std::pair<int, int>> votes(M);
	std::vector<std::vector<int>> people_0(M);
	std::vector<std::vector<int>> people_1(M);

	// Read people's votes
	for (size_t i = 0; i < N; i++) {
		std::cin >> vote;
		people.push_back(vote);
	}

	// Calculate amount of votes in each round
	for (size_t i = 0; i < M; i++) {
		for (size_t j = 0; j < N; j++) {
			// Person 0, vote 0 -> person 1, vote 0
			char c = people[j][i];
			if (c == '0') {
				votes[i].first++;
				people_0[i].push_back(j+1);
			} else {
				votes[i].second++;
				people_1[i].push_back(j+1);
			}
		}
	}

	for (size_t i = 0; i < M; i++) {
		if (votes[i].first > votes[i].second) {
			for (size_t j = 0; j < people_1[i].size(); j++) {
				std::cout << people_1[i][j] << '\n';
			}
		} else {
			for (size_t j = 0; j < people_0[i].size(); j++) {
				std::cout << people_0[i][j] << '\n';
			}
		}
	}

	// std::cout << '\n';

    return 0;
}
