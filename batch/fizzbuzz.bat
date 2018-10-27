@echo off
setlocal EnableDelayedExpansion
set /a zero = 5 - 5
for /L %%i in (1,2,100) do (
 set dmpvarj=%%i
 set /a "dmpvarj%%=3"
  if /I !dmpvarj! NEQ %zero% (
   echo Fizz 
  ) else (
    set dmpvara=%%i
    set /a "dmpvara%%=5"
	if /I !dmpvara! NEQ %zero% (
		echo Buzz
	)
  )
)
