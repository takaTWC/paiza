N, M = gets.split.map(&:to_i)

total = 0
(N-1).times do
  d = gets.to_i
  if M>=d
    total += d
  end
end

puts total