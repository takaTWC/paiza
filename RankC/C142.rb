# 食べたい料理の名前を受け取る
desired_dish = gets.chomp

# メニューの単語数を受け取る
n = gets.to_i

# メニューに含まれる単語を受け取る
menu_items = gets.chomp.split

# 食べたい料理がメニューに含まれているか確認する
found = menu_items.any? { |item| item == desired_dish }

# 結果を出力する
puts found ? "Yes" : "No"