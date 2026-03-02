name <- "Charles"
phone <- "01156862998"

name_modified <- chartr("abcdefghijklmnopqrstuvwxyz", "ABCDEFGHIJKLMNOPQRSTUVWXYZ", name)

phone_digits <- gsub("[^0-9]", "", phone)

if (nchar(phone_digits) >= 7) {
  phone_display <- paste0(
    substr(phone_digits, 1, 3),
    "-xxxxx-",
    substr(phone_digits, nchar(phone_digits) - 3 + 1, nchar(phone_digits))
  )
} else {
  phone_display <- phone_digits
}

cat("Hi,", name_modified, ". A verification code has been sent to ", phone_display, "\n")
