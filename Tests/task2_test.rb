require 'minitest/autorun'
require_relative '../task2.rb'

class Test_task_2 < Minitest::Test
  def test_1
    assert_nil function2(0,100)
    assert_nil function2(100,0)
    assert_nil function2(0,50)
    assert_nil function2(0.81,50)
    assert_nil function2(0.5,13)
    assert_nil function2(0.5,59)
    assert_nil function2(0.09,-1)
    assert_nil function2(0.09,-5)
  end
  def test_2
    assert_equal 0.808496, function2(0.8,14).round(6)
    assert_equal 0.784711, function2(0.8,58).round(6)
    assert_equal 0.916364, function2(0.1,14).round(6)
    assert_equal 0.764131, function2(0.1,58).round(6)
  end
  def test_3
    assert_equal 0.793726, function2(0.4,50).round(6)
    assert_equal 0.775085, function2(0.7,31).round(6)
  end

=begin
  def test_4
    assert_equal 0.7854, function2(0.4,-1).round(4)
  end
=end
end
