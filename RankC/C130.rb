N = gets.chomp.to_i

total = 0
solve = []
N.times do |i|
  a, b = gets.split.map(&:to_s)
  if a == "n" || b == "n"
    total += 1
    solve << i + 1
  end
end

puts total
solve.each{|num| puts num}