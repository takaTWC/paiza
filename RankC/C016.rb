s = gets.chomp.to_s

puts s.gsub(/A|E|G|I|O|S|Z/, "A"=>"4", "E"=>"3", "G"=>"6", "I"=>"1", "O"=>"0", "S"=>"5", "Z"=>"2")
