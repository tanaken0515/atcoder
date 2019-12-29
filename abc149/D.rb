# https://atcoder.jp/contests/abc149/tasks/abc149_d


N, K = gets.split.map(&:to_i)
R, S, P = gets.split.map(&:to_i)
T = gets.chomp

#machine_hands = T.chars
player_hands = T.tr('rsp', 'prs').chars

score_by_hand = {'r' => R, 's' => S, 'p' => P}
score = 0
player_hands.each_with_index do |hand, index|
  if index - K > -1 and hand == player_hands[index - K]
    if index + K < player_hands.length
      dummy_hand = ('rsp'.chars - [hand, player_hands[index + K]]).first
    else
      dummy_hand = ('rsp'.chars - [hand]).first
    end
    player_hands[index] = dummy_hand
    next
  end
  score += score_by_hand[hand]
end

puts score
