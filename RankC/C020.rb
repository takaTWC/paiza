m, p, q = gets.split.map(&:to_i)
a = m*(100-p)*0.01
b = a - a*q*0.01

puts b