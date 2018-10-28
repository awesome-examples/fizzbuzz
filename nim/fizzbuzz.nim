proc fizzbuzz() =
  for i in 1..100:
    if (i %% 3 == 0) and (i %% 5 == 0):
      echo "FizzBuzz"
    elif i %% 3 == 0:
      echo "Fizz"
    elif i %% 5 == 0:
      echo "Buzz":
    else:
      echo i  

fizzbuzz()