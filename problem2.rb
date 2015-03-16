puts <<EOF
Problem 2: Even Fibonacci numbers
=======================================
Each new term in the Fibonacci sequence
is generated by adding the previous two
terms. By starting with 1 and 2,
the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the
Fibonacci sequence whose values do not
exceed four million, find the sum of
the even-valued terms.
=======================================
EOF

# Represents Fibonacci sequence
class Fibonacci
  def initialize(a, b)
    @a, @b = a, b
  end

  def each
    yield @a
    yield @b
    loop do
      @a, @b = @b, @a + @b
      yield @b
    end
  end
end

def sum_of_the_even_valued_numbers_up_to(number)
  sum = 0
  Fibonacci.new(1, 2).each do |f|
    return sum if f > number
    sum += f if f.even?
  end
end

sum = sum_of_the_even_valued_numbers_up_to(4_000_000)
puts "Sum is #{sum}"
