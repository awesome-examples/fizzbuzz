import java.util.*;

public class FizzBuzz {

     public static void main(String []args) {
        ArrayList<Object> output = new ArrayList<Object>();
        for (int i = 1; i <= 100; i++) {
              if (i % 3 == 0 && i % 5 == 0) { output.add("FizzBuzz"); continue; };
              if (i % 3 == 0) { output.add("Fizz"); continue; };
              if (i % 5 == 0) { output.add("Buzz"); continue; };
              output.add(i);
            }
        System.out.println(output);
        }
     }
