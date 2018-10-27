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

fizzbuzzer(2);
?>
