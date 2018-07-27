your_hands = {'g' => 'グー', 'c' => 'チョキ', 'p' => 'パー'}
your_hand = your_hands[gets.chomp]

my_hands = ['グー', 'チョキ', 'パー']
random = Random.new()
my_hand = my_hands[random.rand(0..2)]

case your_hand
when my_hand
    result = '引き分け'
when 'グー'
    if my_hand == 'チョキ'
        result = 'あなたの勝ち'
    elsif my_hand == 'パー'
        result = 'あなたの負け'
    end
when 'チョキ'
    if my_hand == 'グー'
        result = 'あなたの負け'
    elsif my_hand ==  'パー'
        result = 'あなたの勝ち'
    end
when 'パー'
    if my_hand == 'グー'
        result = 'あなたの勝ち'
    elsif my_hand == 'チョキ'
        result = 'あなたの負け'
    end
end

puts "あなたは#{your_hand}、私は#{my_hand}、#{result}です。"