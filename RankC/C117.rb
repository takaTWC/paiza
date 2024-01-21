N, M = gets.split.map(&:to_i)
A, B, C = gets.split.map(&:to_i)

NG = 0
N.times do
  R = gets.to_i
  NG += 1 if A+B*M > C*R
end

puts NG