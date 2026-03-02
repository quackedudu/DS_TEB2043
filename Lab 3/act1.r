scores <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61,
            13, 44, 26, 24, 73, 73, 90, 39, 90, 54)

grades <- cut(scores,
              breaks = c(-Inf, 49, 59, 69, 79, 100),
              labels = c("Fail", "D", "C", "B", "A"))

grade_count <- table(grades)
print("Number of students in each grade:")
print(grade_count)

pass_status <- scores > 49
print("Pass status (TRUE = Pass, FALSE = Fail):")
print(pass_status)
