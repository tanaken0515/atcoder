# https://atcoder.jp/contests/abc155/tasks/abc155_a



A, B, C = gets.split.map(&:to_i)

if A == B && A == C
  puts 'No'
else
  puts A == B || B == C || C == A ? 'Yes' : 'No'
end
