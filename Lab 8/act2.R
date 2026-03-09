data("ChickWeight")
df <- ChickWeight

final_day_data <- df[df$Time == 21, ]

hist(final_day_data$weight, 
     main = "Distribution of Final Chick Weights", 
     xlab = "Weight (gm)", 
     col = "lightblue", 
     border = "black")

boxplot(weight ~ Diet, 
        data = final_day_data, 
        main = "Final Weight by Diet Type", 
        xlab = "Diet Category", 
        ylab = "Weight (gm)", 
        col = c("red", "orange", "green", "blue"), 
        notch = FALSE)

avg_growth <- aggregate(weight ~ Time + Diet, data = df, mean)

plot(avg_growth$time[avg_growth$Diet == 1], avg_growth$weight[avg_growth$Diet == 1], 
     type = "o", col = "red", ylim = c(0, 300),
     main = "Average Growth Trajectory by Diet",
     xlab = "Days", ylab = "Average Weight (gm)")

lines(avg_growth$Time[avg_growth$Diet == 2], avg_growth$weight[avg_growth$Diet == 2], type = "o", col = "orange")
lines(avg_growth$Time[avg_growth$Diet == 3], avg_growth$weight[avg_growth$Diet == 3], type = "o", col = "green")
lines(avg_growth$Time[avg_growth$Diet == 4], avg_growth$weight[avg_growth$Diet == 4], type = "o", col = "blue")

legend("topleft", legend = c("Diet 1", "Diet 2", "Diet 3", "Diet 4"), 
       fill = c("red", "orange", "green", "blue"), cex = 0.8)