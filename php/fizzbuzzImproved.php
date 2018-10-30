<?php
/*
    Fizzbuzz is cyclical, we can prove this with the equations:
        n % 3 = (n + 15) % 3
        n % 5 = (n + 15) % 5
    This basically says that any number modulas 3 or 5 
    will be the same value when you add 15.

    So we know that 15 is the max number here so we can create a bit queue
    from the number of 0 - 15.
        15 14 13 12 11 10 09 08 07 06 05 04 03 02 01
        00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    if that number is divisible by:
        neither = 00, 3 = 01, 5 = 10, both = 11
    so the queue above will become
        15 14 13 12 11 10 09 08 07 06 05 04 03 02 01
        11 00 00 01 00 10 01 00 00 01 10 00 01 00 00
    Do you see a pattern? This binary number equals 810092048 in decimal 
    and that will be our queue.
    
    Now that we have this queue system we can check the queue as a whole using bitwise ops
    against the value of 3. If the result of that check is 0 then we display a counter, 
    else we display the proper message from the messages array. 
    You will see that the index of those values map to the values
    returned when doing a bitwise comparison for 3 and 5.

    To use the queue we will shift the queue value to the right by two bits.
    Then we will add the value of the queue after the bitwise and check
    to the end of the queue by doing an or operation on the queue 
    and shifting by 28 digits. (30 - 2 = 28)

    EX 1:
    15 14 13 12 11 10 09 08 07 06 05 04 03 02 01
    11 00 00 01 00 10 01 00 00 01 10 00 01 00 00
&
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 11
    --------------------------------------------
                                            [00]
    EX 2:
    15 14 13 12 11 10 09 08 07 06 05 04 03 02 01
    00 00 11 00 00 01 00 10 01 00 00 01 10 00 01 
&
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 11
    --------------------------------------------
                                            [01]
    EX 3:
    15 14 13 12 11 10 09 08 07 06 05 04 03 02 01
    00 01 00 00 11 00 00 01 00 10 01 00 00 01 10
&
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 11
    --------------------------------------------
                                            [10]
*/

function fizzbuzz($counter){
    $messages = array(null, "Fizz", "Buzz", "FizzBuzz");
    $queueMask = 810092048;
    for($i = 1; $i <= $counter; $i++){
        $value = $queueMask & 3;
        if($value > 0){
            print($messages[$value]."\n");
        }else{
            print($i."\n");
        }
        $queueMask = $queueMask >> 2 | $value << 28;
    }
}
fizzbuzz(100);

/*
TBA: This solution is difficult to grok and only serves one purpose...
to confuse the hell out of any one giving you a programming test.
*/