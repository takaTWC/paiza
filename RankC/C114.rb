N = gets.chomp.to_i

previous_word = gets.chomp  # 最初の単語を取得

(N - 1).times do
  current_word = gets.chomp  # 次の単語を取得
  if previous_word[-1] != current_word[0]  # しりとりが成立しない場合
    puts "#{previous_word[-1]} #{current_word[0]}"
    exit  # プログラムを終了
  end
  previous_word = current_word  # 次の比較のために現在の単語を保存
end

puts "Yes"  # すべての単語がしりとりとして成立
