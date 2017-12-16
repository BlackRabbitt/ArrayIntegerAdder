module IntegerAdder
  def add(a, b)
    results = []
    carry = 0

    helper(a, b, a.size-1, b.size-1, carry, results)
    return results.reverse
  end

  def helper(a, b, i, j, carry, results)
    if i < 0 and j < 0
      if carry > 0
        results << carry
      end
      return
    elsif i < 0
      result = b[j] + carry
    elsif j < 0
      result = a[i] + carry
    else
      result = a[i] + b[j] + carry
    end
    carry=0

    if result > 9
      results << result % 10
      carry = 1
    else
      results << result
    end

    helper(a, b, i-1, j-1, carry, results)
  end
end
