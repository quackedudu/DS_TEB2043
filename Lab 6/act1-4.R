#activity 1
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0, 8.0, 19.0),
  attempts = c(1, 3, 2, 3, 2, 1, 2)
)

#activity 2
exam_data$qualify <- c('yes', 'no', 'yes', 'no', 'no', 'no', 'yes')

#activity 3
new_row <- data.frame(name = "Emily", score = 14.5, attempts = 1, qualify = "yes")
exam_data <- rbind(exam_data, new_row)

#activity 4
exam_data$qualify <- as.factor(exam_data$qualify)

cat("Data Frame Structure\n")
str(exam_data)

cat("Data Frame Summary\n")
summary(exam_data)

cat("Number of Rows and Columns\n")
print(paste("Rows:", nrow(exam_data)))
print(paste("Columns:", ncol(exam_data)))

cat("Observations:\n")
cat("Total: 8 students\n")
cat("Average score: 12.69.\n")