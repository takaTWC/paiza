def custom_string(start, length)
  result = ''
  number = 1

  while result.length < start + length
    # '8' を 'SNOWMAN' に置換
    num_str = number.to_s.gsub('8', 'SNOWMAN')
    # ハイフンを加えて結果に追加
    result += num_str + '-'
    number += 1
  end

  # 指定された部分文字列を返す
  result[start - 1, length]
end

# 80001番目からの30文字を計算
puts custom_string(80001, 30)