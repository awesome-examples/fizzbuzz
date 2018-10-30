program FizzBuzz
    integer :: n
    do n = 1, 10
        if (MOD(n,15).eq.0) then
            print*, "FizzBuzz"
        else if(MOD(n,3).eq.0) then
            print*, "Fizz"
        else if(MOD(n,5).eq.0) then
            print*, "Buzz"
        else
            print*, n
        end if
   end do
end program FizzBuzz