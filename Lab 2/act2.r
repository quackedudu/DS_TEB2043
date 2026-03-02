string1 <- readline(prompt = "Enter first string: ")
string2 <- readline(prompt = "Enter second string: ")
same <- tolower(string1) == tolower(string2)

if (same) {
  cat("The two strings are the same.\n")
} else {
  cat("The two strings are NOT the same.\n")
}