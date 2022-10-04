def function2(x, n)
  x, n = x.to_f, n.to_i
  return nil if x < 0.1 || x > 0.8
  return nil if (n < 14 && n >= 0) || n > 58
  result = 0.0
  if n > 0
    (1..n).each do |i|
      result += Math.sin((2*i-1)*x) / (2*i-1)
    end
  else
    e = 0.001
    i = 1
    loop do
      current = Math.sin((2*i-1)*x) / (2*i-1)
      result += current
      i += 1
      break if current.abs < e
    end
  end
  result
end

if __FILE__ == $0
  print 'Enter x n values (space-separated):'
  str = gets
  exit if str.nil? || str.empty?
  str.chomp!
  x, n = str.split(' ')
  x, n = x.to_f, n.to_i
  print "\nInput:\n x = #{x}\n n = #{n}\n\n"

  res = function2(x, n)
  if res.nil?
    print "Error! Parameters out of range.\n"
  else
    print "Result is ", res, "\n"
  end
end
