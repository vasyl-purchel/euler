puts <<EOF
Problem 1: Multiples of 3 and 5
======================================
If we list all the natural numbers
below 10 that are multiples of 3 or 5,
we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Find the sum of all the multiples
of 3 or 5 below 1000.
======================================
EOF

def sum_of_multiples_of_3_and_5_below(number)
  sum, i = 0, 3
  sum, i = sum + i, i + 3 while i < number
  i = 5
  while i < number
    sum += i if i % 3 != 0
    i += 5
  end
  sum
end

sum = sum_of_multiples_of_3_and_5_below(10)
puts "Sum below 10   is #{sum}"

sum = sum_of_multiples_of_3_and_5_below(1000)
puts "Sum below 1000 is #{sum}"
