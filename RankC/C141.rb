n = gets.chomp.to_i

names = []
n.times do
  names << gets.chomp
end
name = names.max_by{|name| names.count(name)}

puts name