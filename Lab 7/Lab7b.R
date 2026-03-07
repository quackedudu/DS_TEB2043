#titanic conclusions

titanic <- read.csv("titanic.csv")

cat("======================================== titanic.csv findings\n")
avg <- mean(titanic$Age, na.rm = TRUE)
cat("Average age:", avg, "\n")

counts <- table(titanic$Sex)
cat("Total male:", counts["male"], "\n")
cat("Total female:", counts["female"], "\n")

survive <- sum(titanic$Survived == 1)
cat("Total survived:", survive, "\n")

rate <- mean(titanic$Survived == 1) * 100
cat("Survival rate (%):", rate, "\n")

low <- min(titanic$Age, na.rm = TRUE)
high <- max(titanic$Age, na.rm = TRUE)
cat("Youngest age:", low, "\n")
cat("Oldest age:", high, "\n")

fare <- mean(titanic$Fare, na.rm = TRUE)
cat("Average fare:", fare, "\n")

#uforeport conclusions

library(readxl)
uforeport <- read_xlsx("uforeport.xlsx")
View(uforeport)

cat("======================================== uforeport.xlsx findings\n")
shapes <- sort(table(ufo$`Shape Reported`), decreasing = TRUE)
cat("Most common shape:", names(shapes)[1], "\n")

states <- sort(table(ufo$State), decreasing = TRUE)
cat("Top state:", names(states)[1], "\n")

colored <- sum(!is.na(ufo$`Colors Reported`))
cat("Reports with color:", colored, "\n")

cities <- length(unique(ufo$City))
cat("Total unique cities:", cities, "\n")