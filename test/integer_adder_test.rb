require 'minitest/autorun'
require './lib/integer_adder'

class IntegerAdderTest < MiniTest::Test
  include IntegerAdder

  def test_result
    a = [1, 5]
    b = [1, 6]
    exp = [3, 1]

    result = add(a, b)

    assert_equal exp, result
  end

  def test_more_results
    a1 = [1, 9]
    b1 = [3]
    exp1 = [2, 2]

    result = add(a1, b1)
    assert_equal exp1, result

    a2 = [9]
    b2 = [5]
    exp2 = [1, 4]

    result = add(a2, b2)
    assert_equal(exp2, result)

    a3 = [3]
    b3 = [1, 9]
    exp3 = [2, 2]

    result = add(a3, b3)
    assert_equal exp3, result
  end
end
