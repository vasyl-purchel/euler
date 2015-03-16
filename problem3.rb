puts <<EOF
Problem 3: Largest prime factor
===================================
The prime factors of 13195 are
5, 7, 13 and 29.

What is the largest prime factor of
the number 600851475143 ?
===================================
EOF

@primes = []
def prime?(number)
  @primes.each { |p| return false if number % p == 0 }
  true
end

def max_prime_factor_for(number)
  i, n = 2, number
  while i < n / 2
    if (n % i == 0) && (prime? i)
      @primes << i
      n /= i while n % i == 0
    end
    i += 1
  end
  @primes << n if prime? n
  @primes.last
end

n = 600_851_475_143
puts "Max prime factor for #{n} is #{max_prime_factor_for n}"
