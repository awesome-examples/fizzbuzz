(1..100).each {
    println "${it % 3 == 0 ? 'Fizz' : ''}${it % 5 == 0 ? 'Buzz' : ''}" ?: it
}
