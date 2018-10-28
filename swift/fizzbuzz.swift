func fizzbuzz(until endValue:Int) {
    for i in 0...endValue {
        if i % 3 == 0 && i % 5 == 0 {
            print("fizzbuzz")
        } else {
            if i % 3 == 0 {
                print("fizz")
            } else {
                if i % 5 == 0 {
                    print("buzz")
                }
            }
        }
    }
}
