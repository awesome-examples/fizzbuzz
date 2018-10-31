fizzBuzzMap = (length) => {
    // create an array filled with numbers up to length
    const numbers = Array.apply(null, {length}).map(Number.call, Number)

    // run check for all numbers and return an array with the results
    return numbers.map(divisibleCheck)
}

// check if a number is cleanly divisible by 5, 3 or 15(5 and 3)
const divisibleCheck = (num) => {
    if(num % 15 === 0) {
        return 'FizzBuzz'
    } else if (num % 3 === 0) {
        return 'Fizz'
    } else if (num % 5 === 0) {
        return 'Buzz'
    } else {
        return num
    }
}

fizzBuzzMap(100)