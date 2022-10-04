require 'minitest/autorun'
require_relative '../task1.rb'

class Test_task_1_prm < Minitest::Test
  def test_1
    assert_equal -0.176984, prm(0,0.4,"f1", 10000).round(6)
  end
  def test_2
    assert_equal 1.171, prm(0,1.7,"f2", 10000).round(3)
  end
end

class Test_task_1_trp < Minitest::Test
  def test_1
    assert_equal -0.176984, trp(0,0.4,"f1", 10000).round(6)
  end
  def test_2
    assert_equal 1.171, trp(0,1.7,"f2", 10000).round(3)
  end
end

def f1(x)
  (x**2 - 1) * 10**(-2*x)
end

def f2(x)
  x * Math.atan(x)
end
