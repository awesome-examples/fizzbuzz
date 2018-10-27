i = 1
num = 100
str = ""

while i < num  do
    if i % 3 == 0
        str += "fizz \n"
    elsif i % 5 == 0
        str+="buzz \n"
    else
        str+=i.to_s+"\n"
    end

   i += 1
   
end
puts str

