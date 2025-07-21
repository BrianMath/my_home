#include <iostream>
#include <string>
#include <vector>

int main() {
	std::vector<std::string> weekday = 
		{"Thursday", "Friday", "Saturday", "Sunday", "Monday", "Tuesday", "Wednesday"};

	int32_t num;
	while (std::cin >> num) {
		num %= 7;

		if (num < 0) {
			num += 7;
		}

		std::cout << weekday[num] << '\n';
	}

	return 0;
}

