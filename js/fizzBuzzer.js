
// Ternary
fizzBuzz = () => {
  let fizzOut = []
  for (let i = 1; i <= 100; i++) {
    i % 3 == 0 && i % 5 == 0 ? fizzOut.push('FizzBuzz') : null
    i % 3 == 0 ? fizzOut.push('Fizz') : null
    i % 5 == 0 ? fizzOut.push('Buzz') : null
    fizzOut.push(i)
  }
  return fizzOut
}
