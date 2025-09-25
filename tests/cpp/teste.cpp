#include <bits/stdc++.h>

int main() {
    int X, Y;

	std::cin >> X >> Y;
    std::cout << ((X + Y)%12 == 0 ? 12 : (X + Y)%12) << '\n';

    return 0;
}
