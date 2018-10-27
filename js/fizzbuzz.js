// We define an arrray that will hold all the values
let output = [];

// We iterate over 100 numbers
for (let i = 1; i <= 100; i++) {
  if (i % 3 == 0 && i % 5 == 0) { output.push('FizzBuzz'); continue; };
  if (i % 3 == 0) { output.push('Fizz'); continue; };
  if (i % 5 == 0) { output.push('Buzz'); continue; };
  output.push(i);
}

// We log the array
console.log(output);
