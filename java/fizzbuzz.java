public class FizzBuzz {
	public static void main(String[] args)	{
		for (int i = 1; i<=100; i++)	{
			String output = "";
			if (i % 3 == 0)	{
				output += "Fizz";
			}					
			if (i % 5 == 0)	{
				output += "Buzz";
			}
			if (output == "")	{
				output = Integer.toString(i);
			}
			System.out.println(output);
		}
	}
}
