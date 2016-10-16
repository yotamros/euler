# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def is_divisible(num, range)
  if range == 1
    return true
  end
  (num % range == 0) ? is_divisible(num, range - 1) : (return false)
end

def factorial(n)
  n == 0 ? 1 : n*factorial(n-1)
end

def find_lowest_number(num, range, static_range)
  puts num
  if range == 1
    return num
  end
  is_divisible(num/range, static_range) ? find_lowest_number(num/range, range, static_range) : find_lowest_number(num, range - 1, static_range)
end

num = factorial(20)
find_lowest_number(num, 20, 20)
