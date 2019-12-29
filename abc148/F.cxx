// https://atcoder.jp/contests/abc148/tasks/abc148_f

#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 1e5;

int N, u, v;
int A[N_MAX];
int B[N_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d%d%d", &N, &u, &v);
  REP(i, N) scanf("%d%d", A + i, B + i);
}

int main() {
  input();
  solve();
  return 0;
}
