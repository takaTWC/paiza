def calculate_sequence(n)
  return 1 if n == 1
  return 2 if n == 2

  first = 1
  second = 2

  (3..n).each do |i|
    current = first + second - 1
    first = second
    second = current
  end

  second
end

puts calculate_sequence(42)