random = Random.new()
my_hand = random.rand(1..3)
# 1: グー, 2: チョキ, 3: パー
puts 'g,c,pのどれかを入力して下さい。'
your_hand = gets.chomp
if your_hand == 'g'
    if my_hand == 1
        result = '引き分け'
    elsif my_hand == 2
        result = 'あなたの勝ち'
    elsif my_hand == 3
        result = 'あなたの負け'
    end

elsif your_hand == 'c'

    if my_hand == 1
        result = 'あなたの負け'
    elsif my_hand == 2
        result = '引き分け'
    elsif my_hand == 3
        result = 'あなたの勝ち'
    end

elsif your_hand == 'p'
    if my_hand == 1
        result = 'あなたの勝ち'
    elsif my_hand == 2
        result = 'あなたの負け'
    elsif my_hand == 3
        result = '引き分け'
    end
else
    puts 'g,c,pのどれかを選んで下さい'
end

puts "あなたは#{your_hand}、私は#{my_hand}、#{result}です。"