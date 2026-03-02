num <- as.integer(readline(prompt = "Input an integer: "))
original_num <- num
n <- nchar(num)

sum <- 0
while (num > 0) {
  digit <- num %% 10
  sum <- sum + digit^n
  num <- num %/% 10
}

if (sum == original_num) {
  cat(original_num, "is an Armstrong number.\n")
} else {
  cat(original_num, "is not an Armstrong number.\n")
}