library(stringr)
library(readr)

path <- "./Unclean Dataset.csv"

#read the chaotic spreadsheet bcz somehow, someone managed to fill it this way
data <- read.table(path,
                   sep = "|",
                   header = FALSE,
                   skip = 1,
                   fill = TRUE,
                   strip.white = TRUE)

colnames(data) <- c("Student_ID", "First_Name", "Last_Name", "Age", 
                    "Gender", "Course", "Enrollment_Date", "Total_Payments")

print(head(data,5))

#the code below this line is for removing random bs from the spreadsheet
#troubleshoot console message available on-the-spot

# survey dupes/nulls/datatypes/summary/header
print(paste("num of col: ",ncol(data)))
print(paste("num of row: ", nrow(data)))
print(paste("total null value: ", sum(is.na(data))))
print("datatypes: ")
print(str(data))
print("Summary: ")
print(summary(data))

#remove comma dupes
data$Total_Payments <- str_remove(data$Total_Payments, "\\$")
data$Total_Payments <- str_remove_all(data$Total_Payments, ",")

#change datatype
data$Student_ID <- as.numeric(data$Student_ID)
data$Age <- as.numeric(data$Age)
data$Gender <- as.factor(data$Gender)
data$Course <- as.factor(data$Course)
data$Enrollment_Date <- as.Date(data$Enrollment_Date)
data$Total_Payments <- as.numeric(data$Total_Payments)

print("datatypes: ")
print(str(data))

#missing data
print(paste("total null value: ", sum(is.na(data))))

#remove dupes
df_cleaned <- data
df_removed <- data.frame()
rows_to_remove <- c()

for (i in 2:nrow(data))
{
  for (j in 1:(i-1))
  {
    if (data[i, 2] == data[j,2])
    {
      rows_to_remove <- c(rows_to_remove,i)
    }
  }
}

df_cleaned <- df_cleaned[-rows_to_remove,]
print(head(df_cleaned))
print(paste("num of col: ",ncol(df_cleaned)))
print(paste("num of row: ", nrow(df_cleaned)))
print("Duplicate rows removed")

df_cleaned <- data
df_removed <- data.frame()
rows_to_remove <- c()

#terminate na
for (i in 2:nrow(data))
{
  if (is.na(data[i, 1]) == TRUE)
  {
    rows_to_remove <- c(rows_to_remove,i)
  }
}

df_cleaned <- df_cleaned[-rows_to_remove,]
print(head(df_cleaned, 16))

#random bs line end here
#code below this line is reformat section

#enrollment date
date_counts <- table(df_cleaned$Enrollment_Date)
date_mode <- names(date_counts)[which.max(date_counts)]
print(paste("The most frequent enrollment date is:", date_mode))

df_cleaned$Enrollment_Date[is.na(df_cleaned$Enrollment_Date)] <- as.Date(date_mode)

print(head(df_cleaned, 16))

#total_payments
payments_counts <- table(df_cleaned$Total_Payments)
payments_mode <- names(payments_counts)[which.max(payments_counts)]
print(paste("Mode of payments: ", payments_mode))

df_cleaned$Total_Payments[is.na(df_cleaned$Total_Payments)] <- as.numeric(payments_mode)

print(head(df_cleaned, 16))

#courses
df_cleaned$Course <- gsub("Machine Learnin", "Machine Learning", df_cleaned$Course)
df_cleaned$Course <- gsub("Machine Learningg", "Machine Learning", df_cleaned$Course)
df_cleaned$Course <- gsub("Web Developmen", "Web Development", df_cleaned$Course)
df_cleaned$Course <- gsub("Web Developmentt", "Web Development", df_cleaned$Course)

df_cleaned$Course <- as.factor(df_cleaned$Course)

df_cleaned[df_cleaned == ""] <- NA

write.csv (df_cleaned , file= 'Cleaned Dataset.csv')