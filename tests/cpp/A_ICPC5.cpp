#include <bits/stdc++.h>

using ll = long long;

int main() {
	ll n, target;
	std::cin >> n >> target;

	std::vector<ll> arr(n);
	std::map<ll, ll> pos;

	for (size_t i = 0; i < n; i++) {
		ll tmp;
		std::cin >> tmp;
		arr[i] = tmp;
		pos.insert({tmp, i+1});
	}

	std::sort(arr.begin(), arr.end());
	// arr original: 2 7 5 1
	// arr: 1 2 5 7
	// pos(num, index): (1, 4) (2, 1) (5, 3) (7, 2)

	// 10 1 9 1 2 3 6 1 7 2
	// 1  1 1 2 2 3 6 7 9 10

	ll left = 0, right = n-1, sum = 0;

	while (left < right) {
		ll l = arr[left], r = arr[right];
		sum = l + r;
		std::cout << "sum: " << sum << " | l: " << l << " | r: " << r << '\n';

		if (sum < target) {
			left++;
			continue;
		} else if (sum > target) {
			right--;
			continue;
		}
		
		// sum == target
		l = pos.find(l)->second;
		r = pos.find(r)->second;

		if (l < r) {
			std::cout << l << ' ' << r << '\n';
		} else {
			std::cout << r << ' ' << l << '\n';
		}

		return 0;
	}

	std::cout << "IMPOSSIBLE\n";

	return 0;
}