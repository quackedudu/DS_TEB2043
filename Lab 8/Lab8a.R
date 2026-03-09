data()

data(mtcars)
print(head(mtcars, 10))
input <- mtcars[,c('mpg', 'cyl')]
print(head(input))

demo(graphics)
demo(image)

x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
pie(x, labels)

png(file = "city.png")
pie(x, labels)
dev.off()

pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

piepercent <- round(100*x/sum(x), 1)
pie(x, labels = piepercent, main = "City pie chart", col = rainbow(length(x)))
legend("topright", c("London", "New York", "Singapore", "Mumbai"), cex = 0.8, fill = rainbow(length(x)))

library(plotrix)
pie3D(x, labels = labels, explode = 0.1, main = "Pie Chart of Countries")

boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders", ylab = "Miles Per Gallon", main = "Mileage Data")

boxplot(mpg ~ cyl, data = mtcars,
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon",
        main = "Mileage Data",
        notch = TRUE,
        varwidth = TRUE,
        col = c("green", "yellow", "purple"),
        names = c("High", "Medium", "Low")
)

v <- c(9,13,21,8,36,22,12,41,31,33,19)
hist(v, xlab = "Weight", col = "yellow", border = "blue")

hist(v, xlab = "Weight", col = "green", border = "red", xlim = c(0,40), ylim = c(0,5), breaks = 5)

input <- mtcars[,c('wt','mpg')]
plot(x = input$wt, y = input$mpg, xlab = "Weight", ylab = "Milage", xlim = c(2.5,5), ylim = c(15,30), main = "Weight vs Milage")

pairs(~wt+mpg+disp+cyl, data = mtcars, main = "Scatterplot Matrix")

H <- c(7,12,28,3,41)
barplot(H)

M <- c("Mar", "Apr", "May", "Jun", "Jul")
barplot(H, names.arg = M, xlab = "Month", ylab = "Revenue", col = "blue", main = "Revenue chart", border = "red")

colors = c("green", "orange", "brown")
months <- c("Mar", "Apr", "May", "Jun", "Jul")
regions <- c("East", "West", "North")
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11), nrow = 3, ncol = 5, byrow = TRUE)
barplot(Values, main = "total revenue", names.arg = months, xlab = "month", ylab = "revenue", col = colors)
legend("topleft", regions, cex = 1.3, fill = colors)

v <- c(7,12,28,3,41)
plot(v, type = "o")

plot(v, type = "o", col = "red", xlab = "Month", ylab = "Rain fall", main = "Rain fall chart")

t <- c(14,7,6,19,3)
plot(v, type = "o", col = "red", xlab = "Month", ylab = "Rain fall", main = "Rain fall chart")
lines(t, type = "o", col = "blue")