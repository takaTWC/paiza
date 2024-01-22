# 人数を取得
n = gets.chomp.to_i

# 各人の最初のボールの数を取得
balls = []
n.times { balls << gets.chomp.to_i }

# パス回しの情報の数を取得
m = gets.chomp.to_i

# パス回しを処理
m.times do
  a, b, x = gets.chomp.split.map(&:to_i)
  
  # パスするボールの数を計算
  transfer_count = [x, balls[a - 1]].min
  
  # パスした分を引いて、受け取る人に加える
  balls[a - 1] -= transfer_count
  balls[b - 1] += transfer_count
end

# 各人の最終的なボールの数を出力
balls.each { |count| puts count }