// https://atcoder.jp/contests/abc148/tasks/abc148_b

#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 100;

int N;
char S[S_MAX + 1];
char T[T_MAX + 1];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d", &N);
  scanf("%s%s", S, T);
}

int main() {
  input();
  solve();
  return 0;
}
