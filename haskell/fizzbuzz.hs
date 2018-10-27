fizzbuzz :: [String]
fizzbuzz = [if n `mod` 3 == 0 && n `mod` 5 == 0 then "FizzBuzz" else
            if n `mod` 3  == 0 then "Fizz" else
            if n `mod` 5  == 0 then "Buzz" else
            show n | n <- [1..100]]


main :: IO ()
main =  mapM_ putStrLn fizzbuzz

