public class fizzbuzz {

	public static void main(String[] args) {

		for(int i=1;i<=100;i++){
				
			if(i%3 == 0){
				System.out.print("Fizz"); //prints fizz, but not in a new line
			}

			if (i%5 == 0){
				System.out.print("Buzz"); //then checks and prints buzz but not in new line
			}

			if(i%3 != 0 && i%5 != 0){
				System.out.print(i); //if not fizz buzz then prints number
			}
			
				System.out.println(); //new line at the end.

		}
	}
}