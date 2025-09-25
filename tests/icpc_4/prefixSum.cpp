#include <bits/stdc++.h>
using namespace std;

int main() {
    int n, q;
    cin >> n >> q;
    vector<int> prefix(n + 1);

    // Para evitar o caso de indíce negativo em
    // prefix[i-1], indexaremos o array a partir de 1
    prefix[0] = 0;

    // O(n)
    for (int i = 1; i <= n; i++) {
        int x;
        cin >> x;
        prefix[i] = prefix[i - 1] + x;
    }

    // O(q)
    while (q--) {
        int l, r;
        cin >> l >> r;
        cout << prefix[r] - prefix[l - 1] << '\n';
    }
}