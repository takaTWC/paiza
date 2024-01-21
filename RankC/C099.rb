# 標準入力から N と D を読み込む
N, D = gets.split.map(&:to_i)

# 各折り紙の重なり具合を読み込む
overlaps = []
(N - 1).times do
  overlaps << gets.to_i
end

# 面積を計算するメソッド
def calculate_area(d, overlaps)
  # 最初の折り紙の面積を初期値として設定
  total_length = d

  # 2枚目以降の折り紙の処理
  overlaps.each do |overlap|
    # 重なりを差し引いた「見える」部分の長さを合計に追加
    total_length += d - overlap
  end

  # 面積を計算（長さ×高さ）
  area = total_length * d
  return area
end

# 面積の計算
area = calculate_area(D, overlaps)
puts area
