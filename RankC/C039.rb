m = gets.chomp.split("+")
count = m.count

total = 0
x = []
y = []

count.times do |i|
  x[i] = m[i].scan('<').length * 10
  y[i] = m[i].scan('/').length
  total += x[i] + y[i]
end

puts total