for (i in c(1:100)){
  output = NULL
  flag = TRUE
  if (i %% 3 == 0)  {
    output = cbind(output, "Fizz")
    flag = FALSE
  }
  if (i %% 5 == 0)  {
    output = cbind(output, "Buzz")
    flag = FALSE
  }
  if (flag) {
    output = toString(i)
  }
  cat(output, sep = "\n")
}
