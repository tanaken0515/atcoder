# https://atcoder.jp/contests/abc149/tasks/abc149_e



N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort

score = 0
m = 0
(N - 1).downto(0) do |k|
  score += As[k] + As[k]
  m += 1
  break if m == M

  if k - 1 >= 0
    score += As[k] + As[k-1]
    m += 1
    break if m == M

    score += As[k-1] + As[k]
    m += 1
    break if m == M
  end

  next_k = false
  is_break = false
  (k - 2).downto(0) do |i|
    if As[k] + As[i] > As[k-1] * 2
      score += As[k] + As[i]
      m += 1
      if m == M
        is_break = true
        break
      end

      score += As[i] + As[k]
      m += 1
      if m == M
        is_break = true
        break
      end
    else
      next_k = true
    end
  end

  break if is_break
  next if next_k
end

puts score
