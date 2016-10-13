# What is the largest prime factor of the number 600851475143 ?

def is_prime(num)
  divider = 2
  while divider < num
    if num % divider == 0
      # not prime
      return false
    end
    divider += 1
    if divider == num
      return num
    end
  end
end

# Iterate through prime numbers starting from 3.
# If @number is devidable by prime number do the division.  Update @number to the result of the division
# Continue iterating starting from the last prime number used.
# Stop iterating when the value of multiple is equal to @number

@number = 600851475143
count = 3
multiple = 1
while true do
  if is_prime(count)
    if @number % count == 0
      multiple *= count
      @number = @number/count
      puts count
      puts multiple
      puts @number
      if multiple == @number
        break
      end
    end
  end
  count += 1;
end
