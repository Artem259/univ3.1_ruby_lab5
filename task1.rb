def eval_func(function, parameter)
  eval(function + "(" + parameter.to_s + ")")
end

def prm(a, b, function, n)
  a, b = a.to_f, b.to_f
  h = (b-a) / n
  res = 0
  (1..n).each do |i|
    x_i = a + i*h - h/2
    res += eval_func(function, x_i)
  end
  res * h
end

def trp(a, b, function, n)
  a, b = a.to_f, b.to_f
  h = (b-a) / n
  res = eval_func(function, a)/2 + eval_func(function, b)/2
  (1..n-1).each do |i|
    x_i = a + i*h
    res += eval_func(function, x_i)
  end
  res * h
end

#------------------------------------------------------------#

def sin(x)
  Math.sin(x)
end

def f1(x)
  (x**2 - 1) * 10**(-2*x)
end

def f2(x)
  x * Math.atan(x)
end

#------------------------------------------------------------#

if __FILE__ == $0
  print "\nF1 Prm: ", prm(0,0.4,"f1", 10000)
  print "\nF1 Trp: ", trp(0,0.4,"f1", 10000)
  print "\nF2 Prm: ", prm(0,1.7,"f2", 10000)
  print "\nF2 Trp: ", trp(0,1.7,"f2", 10000), "\n"
end
