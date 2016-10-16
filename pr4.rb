# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_pal(num)
  number = num.to_s
  i = 0
  number.length % 2 == 0 ? length = number.length/2 : length = number.length/2 + 1
  is_pal = true
  length.times do
    if is_pal
      first_digit = number[i]
      last_digit = number[-1 -i]
      if first_digit != last_digit
        is_pal = false
      end
      i += 1
    end
  end
  return is_pal
end

def is_divisible(num, max_num)
  while max_num > (max_num + 1)/10
    if num % max_num == 0 && (num/max_num).to_s.size == 3
      return true
    end
    max_num -= 1
  end
  return false
end

max_num = 999
largest_num = max_num * max_num
answer = nil
while !answer
  if is_pal(largest_num) && is_divisible(largest_num, max_num)
    puts answer = largest_num
  else
    largest_num -= 1
  end
end

