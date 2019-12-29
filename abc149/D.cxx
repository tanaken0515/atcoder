// https://atcoder.jp/contests/abc149/tasks/abc149_d

#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 1e5;
const int R_MAX = 1e4;
const int S_MAX = 1e4;
const int P_MAX = 1e4;

int N, K;
int R, S, P;
char T[T_MAX + 1];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d%d", &N, &K);
  scanf("%d%d%d", &R, &S, &P);
  scanf("%s", T);
}

int main() {
  input();
  solve();
  return 0;
}
