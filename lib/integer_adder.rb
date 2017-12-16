require 'pry'
module IntegerAdder
  def add(a, b)
    results = []
    carry = 0

    helper(a, b, a.size-1, b.size-1, carry, results)
    return results.reverse
  end

  def helper(a, b, i, j, carry, results)
    if i < 0 and j < 0
      return
    elsif i < 0
      for k in b[j].downto(0)
        results << b[k]
      end
      return
    elsif j < 0
      for k in a[i].downto(0)
        results << a[k]
      end
      return
    end

    result = a[i] + b[j] + carry
    carry=0

    if result > 9
      results << result - 10
      carry = 1
    else
      results << result
    end

    helper(a, b, i-1, j-1, carry, results)
  end
end
