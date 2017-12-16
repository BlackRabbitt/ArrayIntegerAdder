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
end
