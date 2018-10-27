const fizzbuzzChecker = value => {
  const fizz = (value % 3 === 0) ? 'Fizz' : '';
  const buzz = (value % 5 === 0) ? 'Buzz' : '';
  const nan = (fizz === '') ? (buzz === '') ? value : '' : '';
  const res = fizz+buzz+nan;
  return res;
}

// Example Usage
// fizzbuzzChecker(number));
