student_record <- list(
  Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt",
           "Larson", "Holland", "Paul", "Simu", "Renner"),
  Score = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 59)
)

highest_score <- max(student_record$Score)
lowest_score <- min(student_record$Score)
average_score <- mean(student_record$Score)

student_highest <- student_record$Name[student_record$Score == highest_score]
student_lowest <- student_record$Name[student_record$Score == lowest_score]

cat("Highest score:", highest_score, "\n")
cat("Lowest score:", lowest_score, "\n")
cat("Average score:", average_score, "\n")
cat("Student with highest score:", student_highest, "\n")
cat("Student with lowest score:", student_lowest, "\n")
