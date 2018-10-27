fun main(args: Array<String>) {
	val max = if (args.size > 0 && args[0].toInt() > 0) args[0].toInt() else 100
	for (i in 1.rangeTo(max)) {
		if (i % 3 == 0 && i % 5 == 0)
			println("FizzBuzz")
		else if (i % 3 == 0)
			println("Fizz")
		else if (i % 5 == 0)
			println("Buzz")
		else
			println(i)
	}
}
