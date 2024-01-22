n = gets.to_i
first = 1
total = 0

n.times do
  now = gets.to_i
  total += (now - first).abs
  first = now
end

puts total