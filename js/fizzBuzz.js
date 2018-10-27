function fizzBuz (num) {
      for(let i = 1;i <= num;i++) {
          if(i % 3 === 0 && i % 5 === 0) {
              console.log('Fizzbuz')
          }else if (i % 3 === 0) {
              console.log('fizz')
          }else if (i % 5 === 0) {
              console.log('Buz')
          }else{
              console.log(i)
          }
      }
        
  
  }
  fizzBuz(10) 