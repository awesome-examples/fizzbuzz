' Fizzbuzz implementation in Visual Basic Script (Vbscript)

Dim i,a,r

Wscript.Echo "Fizzbuzz in Vbscript"
a = InputBox("Please provide a range for the fizzz...","Fizzbuzz","100")

for i = 0 to CInt(a)
  If (i mod 3 = 0) Then
    r = r + "Fizz "
  Elseif (i mod 5 = 0) Then
    r = r + "Buzz "
  Else
    r = r + CStr(i)+" "
  End if
Next

Wscript.Echo r
