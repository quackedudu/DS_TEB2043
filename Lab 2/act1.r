weight <- as.numeric(readline(prompt = "Enter weight (kg): "))
height <- as.numeric(readline(prompt = "Enter height (m): "))

bmi <- weight / (height^2)

if (bmi <= 18.4) {
  status <- "Underweight"
} else if (bmi >= 18.5 & bmi <= 24.9) {
  status <- "Normal"
} else if (bmi >= 25.0 & bmi <= 39.9) {
  status <- "Overweight"
} else {
  status <- "Obese"
}

cat("BMI:", round(bmi, 2), "\n")
cat("Status:", status, "\n")
