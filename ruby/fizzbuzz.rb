# This is an implemention of the generic fizzbuzz problem using ruby.
# Problem definition: Write a program that prints the numbers from 1 to 100.
# But for multiples of three print "Fizz" instead of the number and for the
# multiples of five print "Buzz". For numbers which are multiples of both three
# and five print "FizzBuzz".

def fizzbuzz(number)
  return 'FizzBuzz' if number % 15 == 0
  return 'Fizz' if number % 3 == 0
  return 'Buzz' if number % 5 == 0
  return number
end

(1..100).each do |number|
  puts fizzbuzz(number)
end
