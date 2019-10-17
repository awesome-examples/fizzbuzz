import java.util.HashMap;
import java.util.TreeMap;

public class FizzBuzzMap{

	public static void main(String []args) {
		HashMap<Integer,String> fizzBuzzTreeMap = new HashMap<Integer, String>();
		for (int i = 1; i <= 100; i++) {
			if (i % 5 ==0 && i % 3 == 0) {
				fizzBuzzTreeMap.put(i, "FizzBuzz");
			} else if (i % 5 == 0) {
				fizzBuzzTreeMap.put(i, "Buzz");
			} else if (i % 3 ==0) {
				fizzBuzzTreeMap.put(i, "Fizz");
			} else {
				fizzBuzzTreeMap.put(i, String.valueOf(i));
			}
		}
		
		for (int i = 1; i <= 100; i++) {
			System.out.println(fizzBuzzTreeMap.get(i));
		}
	}
}