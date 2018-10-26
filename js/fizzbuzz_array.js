// FizzBuzz JavaScript (JS) - Array

// Create an array
m = [...Array(101).keys()];

// Map the array and print it
console.log(m.map(v).join("\n"));

function v(i) {
  // Create an empty string
  var output = "";
  
  // Divide
  output += check(i, 3, "Fizz");
  output += check(i, 5, "Buzz");
  
  // Check if output is empty
  if (output === "") { output = i; }
  
  return output;
}

function check(i, number, word) {
  if (i % number === 0) { return word; }
  
  return "";
}
