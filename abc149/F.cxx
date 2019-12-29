// https://atcoder.jp/contests/abc149/tasks/abc149_f

#include <cstdio>

using namespace std;

#define REP(i,n)   for(int i=0; i<(int)(n); i++)
#define FOR(i,b,e) for(int i=(b); i<=(int)(e); i++)

const int N_MAX = 2*1e5;
const int MOD = 10;

int N;
int A[N_MAX];
int B[N_MAX];

void solve() {
  int ans = 0;
  printf("%d\n", ans);
}

void input() {
  scanf("%d", &N);
  REP(i, N) scanf("%d%d", A + i, B + i);
}

int main() {
  input();
  solve();
  return 0;
}
