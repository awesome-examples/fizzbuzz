for x=1:100 
    if mod(x,3) == 0 && mod(x,5) == 0
        println("FizzBuzz")
    elseif mod(x,3) == 0
        println("Fizz")
    elseif mod(x,5) == 0
        println("Buzz")
    else
        println(x)
    end
end