n = gets.chomp.to_i

time = []
n.times do
  s, f, t = gets.split.map(&:to_i)
  time << s + f + (24 - t)
end

puts time.min
puts time.max
