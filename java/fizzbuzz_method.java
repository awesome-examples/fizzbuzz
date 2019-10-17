package fizzbuzzPull;

public class fizzbuzz_method {

	public static void main(String[] args) {
		
		for(int i = 0; i <= 100; i++) {
			System.out.println(fizzBuzz(i));
		}
		
		

	}
	
	public static String fizzBuzz(int number) {
		String output = "";
		
		if(number % 5 == 0 && number % 3 == 0 ) {
			output += "FizzBuzz";
		} else if (number % 5 == 0) {
			output += "Buzz";
		}else if (number % 3 == 0) {
			output += "Fizz";
		} else {
			output += number;
		}
		return output;
	}

}
