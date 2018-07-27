msg = 'g,c,pのどれかを入力して下さい。'
puts msg
your_hands = {'g' => 'グー', 'c' => 'チョキ', 'p' => 'パー'}
your_hand = your_hands[gets.chomp]

random = Random.new()
my_hands = ['グー', 'チョキ', 'パー']
my_hand = my_hands[random.rand(0..2)]

if your_hand == my_hand
    result = '引き分け'

elsif your_hand == 'グー'
    if my_hand == 'チョキ'
        result = 'あなたの勝ち'
    elsif my_hand == 'パー'
        result = 'あなたの負け'
    end

elsif your_hand == 'チョキ'
    if my_hand == 'グー'
        result = 'あなたの負け'
    elsif my_hand ==  'パー'
        result = 'あなたの勝ち'
    end

elsif your_hand == 'パー'
    if my_hand == 'グー'
        result = 'あなたの勝ち'
    elsif my_hand == 'チョキ'
        result = 'あなたの負け'
    end
else
    puts msg
end

puts "あなたは#{your_hand}、私は#{my_hand}、#{result}です。"