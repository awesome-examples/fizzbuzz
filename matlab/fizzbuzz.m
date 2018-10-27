for i=1:100
    output = "";
    if mod(i, 3) == 0
        output = output + "Fizz";
    end
    if mod(i, 5) == 0
        output = output + "Buzz";
    end
    if output == ""
        output = int2str(i);
    end
    fprintf("%s\n", output)
end
