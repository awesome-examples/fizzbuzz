# FizzBuzz Python

for number in range(100):
  
  # Create i one above 1, as we count from 0.
  i = number + 1
  
  # Create an empty string
  output = ""
  
  # Divide
  if (i % 3 == 0): output += "Fizz"
  if (i % 5 == 0): output += "Buzz"
  
  # Check if output is empty
  if (output == ""): output = i
  
  # Print the output
  print(output)

# Fizzbuzz solution with while loop and else if statements
i = 1 

while i <= 100:
    if i % 3 == 0 and i % 5 == 0:
        print ("Fizzbuzz")
    elif i % 3 == 0:
        print ("Fizz")
    elif i % 5 == 0:
        print ("Buzz")
    else:
      print (i)
    # increase number by one after checking conditionals
    i += 1


