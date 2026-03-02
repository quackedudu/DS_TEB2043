student_record <- list(
  Name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt",
           "Larson", "Holland", "Paul", "Simu", "Renner"),
  Chemistry = c(59, 89, 86, 65, 52, 60, 67, 40, 77, 90),
  Physics   = c(59, 71, 83, 68, 65, 57, 62, 92, 92, 61)
)
fail_chem <- sum(student_record$Chemistry <= 49)
cat("Number of students who failed Chemistry:", fail_chem, "\n")

fail_phys <- sum(student_record$Physics <= 49)
cat("Number of students who failed Physics:", fail_phys, "\n")

highest_chem_score <- max(student_record$Chemistry)
student_highest_chem <- student_record$Name[student_record$Chemistry == highest_chem_score]

highest_phys_score <- max(student_record$Physics)
student_highest_phys <- student_record$Name[student_record$Physics == highest_phys_score]

cat("Students with highest Chemistry score:", student_highest_chem, "\n")
cat("Students with highest Physics score:", student_highest_phys, "\n")
