def find_min_n_for_sum(limit)
  sum = 0
  n = 1

  while sum < limit
    sum += Math.sqrt(n).to_i
    n += 1
  end

  n - 1
end

puts find_min_n_for_sum(3000000)