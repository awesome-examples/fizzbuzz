const fizzbuzzChecker = value => {
  const fizz = (value % 3 === 0) ? 'fizz' : '';
  const buzz = (value % 5 === 0) ? 'buzz' : '';
  const nan = (fizz === '') ? (buzz === '') ? value : '' : '';
  const res = fizz+buzz+nan;
  return res;
}

console.log(fizzbuzzChecker(2));