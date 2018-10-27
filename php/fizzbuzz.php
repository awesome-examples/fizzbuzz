<?php
// To run, call the function
// fizzbuzzer(value)
function fizzbuzzer( $value ) {
  $res = '';
  if( $value % 3 === 0) {
    $res .= 'fizz';
  }
  if( $value % 5 === 0) {
    $res .= 'buzz';
  }
  if( $res === ''){
    $res = $value;
  }
  echo $res;
}

// Tip: You can insert a loop into the function
// e.g. for($i =1; $i <=100; $i++) { fizzbuzzer($i); }
fizzbuzzer(2);
?>
