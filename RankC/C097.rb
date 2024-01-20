N, X, Y = gets.split.map(&:to_i)

(1..N).each do |applicant|
  result = ''
  result += 'A' if applicant % X == 0
  result += 'B' if applicant % Y == 0
  result = 'N' if result.empty?

  puts result
end
