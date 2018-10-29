// Goal: Log Fizz for every number divisible by five, Buzz for every number divisible by three, FizzBuzz for every number divisible by both.

// First, let's create an empty array with 100 elements

let array = new Array(100)

// Now, let's use the 'keys' method and iterate through the array

for (let element of array.keys()) {
  let printedValue = element + 1 // Javascript arrays are zero-indexed, so we need to add one to the current key
  
  printedValue = printedValue % 15 === 0 ? "FizzBuzz" : printedValue % 5 === 0 ? "Buzz" : printedValue % 3 === 0 ? "Fizz" : printedValue // This code works, but is a bit silly. I wanted to use ternary operators, and demonstrate that they can be chained together, but it's very ugly.
  
  console.log(printedValue) // Finally, write out the correct answer
}
