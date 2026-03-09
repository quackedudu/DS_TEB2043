data <- read.csv("titanic.csv")
data <- na.omit(data)

# bar chart for survival by class
survival_table <- table(data$Survived, data$Pclass)
colors_bar <- c("red", "green")
barplot(survival_table, 
        main = "Survival by Passenger Class",
        xlab = "Passenger Class", 
        ylab = "Number of Passengers", 
        col = colors_bar,
        names.arg = c("1st", "2nd", "3rd"))
legend("topleft", legend = c("Not Survived", "Survived"), fill = colors_bar)



# boxplot for age distribution
boxplot(data$Age ~ data$Survived, 
        main = "Age Distribution vs Survival",
        xlab = "Survived (0=No, 1=Yes)",
        ylab = "Age",
        col = c("orange", "lightblue"))



# pie chart for gender demographics
gender_counts <- table(data$Sex)
percent_labels <- round(100 * gender_counts / sum(gender_counts), 1)
pie_labels <- paste(names(gender_counts), "(", percent_labels, "%)", sep = "")
pie(gender_counts, 
    labels = pie_labels, 
    main = "Gender Composition", 
    col = c("pink", "skyblue"))