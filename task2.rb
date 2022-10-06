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
