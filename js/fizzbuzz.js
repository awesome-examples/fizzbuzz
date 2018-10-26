// FizzBuzz JavaScript (JS)

for (i = 1; i <= 100; i++) {
  // Create an empty string
  var output = "";
  
  // Divide
  check(3, "Fizz");
  check(5, "Buzz");
  
  // Check if output is empty
  if (output === "") { output = i; }
  
  // Print the output
  console.log(output);
}

function check(number, word) {
  if (i % number === 0) { output += word; }
}
