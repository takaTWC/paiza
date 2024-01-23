# 入力を受け取る
m = gets.to_i
a_live_days = m.times.map { gets.to_i }
n = gets.to_i
b_live_days = n.times.map { gets.to_i }

# 日ごとのスケジュールを作成
schedule = Array.new(31, 'x')
last_choice = 'B'

(1..31).each do |day|
  a_live = a_live_days.include?(day)
  b_live = b_live_days.include?(day)

  if a_live && b_live
    # 両方のライブがある場合、前回と異なるバンドを選ぶ
    last_choice = last_choice == 'A' ? 'B' : 'A'
    schedule[day - 1] = last_choice
  elsif a_live
    schedule[day - 1] = 'A'
  elsif b_live
    schedule[day - 1] = 'B'
  end
end

# 結果を出力
puts schedule