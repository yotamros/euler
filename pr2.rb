# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

third_value = 0
first_value = 0
second_value = 1
sum = 0
while third_value < 4000000 do
  third_value = first_value + second_value
  first_value = second_value
  second_value = third_value
  if third_value % 2 == 0
    sum += third_value
  end
end
puts sum