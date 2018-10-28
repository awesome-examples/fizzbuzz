function fizzBuzzSwitchStatement () {
    const limitValue = 100;

    for (let i = 0; i <= limitValue; i++) {
        switch (true) {
            case (i % 3 == 0 && i % 5 == 0):
                console.log('FizzBuzz');
                break;
            case (i % 3 == 0):
                console.log('Fizz');
                break;
            case (i % 5 == 0):
                console.log('Buzz');
                break;
            default:
                console.log(i);
                break;
        }
    }
}