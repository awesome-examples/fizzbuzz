import java.util.*;
	public class FizzBuzz
	{
		public static void main (String [] args)
		{
			int i=1;
			while (i<=100)
			{if (i%3==0 && i%5==0)
				System.out.printf ("FizzBuzz\n");
			else if (i%3==0)
				System.out.printf ("Fizz\n");
			else if (i%5==0)
				System.out.printf ("Buzz\n");
			else System.out.printf ("%d\n", i);
				i++;}
		}
	}
