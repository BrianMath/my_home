#include <bits/stdc++.h>

int main() {
	int N, M;
	std::string line;
	std::cin >> N >> M;

	std::vector<std::string> people;
	std::map<int, int> people_score;

	for (int i = 0; i < N; i++) {
		std::cin >> line;
		people.push_back(line);
		people_score[i+1] = 0;
	}

	for (int col = 0; col < M; col++) {
		int num0 = 0, num1 = 0;
		char min;
		
		for (int lin = 0; lin < N; lin++) {
			if (people[lin][col] == '0') {
				num0++;
			} else {
				num1++;
			}
		}

		if (num0 == 0 || num1 < num0) {
			min = '1';
		} else {
			min = '0';
		}

		for (int lin = 0; lin < N; lin++) {
			if (people[lin][col] == min) {
				people_score[lin+1]++;
			}
		}
	}

	int max = 0, num = 0;
	for (auto it : people_score) {
		if (it.second >= max) {
			max = it.second;
			num++;
		}
	}

	for (auto it : people_score) {
		if (it.second == max) {
			std::cout << it.first;
			if (--num) {
				std::cout << ' ';
			}
		}
	}

	std::cout << '\n';

	return 0;
}