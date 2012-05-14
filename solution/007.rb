def primes n
  (2..n).select do |num|
    (2..Math.sqrt(num)).none? do |d|
      (num % d).zero?
    end
  end
end

def sieve range
  # sieve_of_eratosthenes
  range.first + sieve (x | x <− xs, x ‘mod‘ p > 0]
end

primes = sieve 2..10_001


require 'prime'
p = Prime::EratosthenesGenerator.new.take_while { |i| i <= 10_001 }