import 'dart:io';
import 'dart:math';

void main() {
  List<String> first = stdin.readLineSync()!.split(' ');
  int t = int.parse(first[0]);
  StringBuffer out = StringBuffer();

  while (t-- > 0) {
    List<String> nk = stdin.readLineSync()!.split(' ');
    int n = int.parse(nk[0]);
    int k = int.parse(nk[1]);

    List<int> arr = stdin.readLineSync()!.split(' ').map(int.parse).toList();

    List<int> cnt = List.filled(n + 1, 0);
    for (int x in arr) cnt[x]++;

    int ans = 0;

    for (int v = 1; v <= n; v++) {
      int u = k - v;

      if (u < 1 || u > n) continue;

      if (v < u) {
        ans += min(cnt[v], cnt[u]);
      } else if (v == u) {
        ans += cnt[v] ~/ 2;
      }
    }

    out.writeln(ans);
  }

  stdout.write(out.toString());
}

