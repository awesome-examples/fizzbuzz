(1 until 100).map(_ match {                
    case i: Int if ((i % 3) == 0 && (i % 5) == 0) => "FizzBuzz"
    case i: Int if ((i % 3) == 0) => "Fizz"
    case i: Int if ((i % 5) == 0) => "Buzz"
    case i: Int => i.toString
}).foreach(println _)
