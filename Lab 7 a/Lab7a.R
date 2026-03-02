# ============================================
# TEB2164 Introduction to Data Science
# Lab 7a – Managing Data Frame
# ============================================

# 1. Importing Data
# 1.1 Installing and loading libraries
library(readxl)

# 1.2 Identify and set the folder path
getwd()  # Get current working directory
list.files()  # List files in working directory

# 1.3 Import Excel file (updated for .xlsx)
uforeport <- read_excel("uforeports.xlsx")
View(uforeport)

# 1.4 Import CSV file
titanic <- read.csv("titanic.csv")
View(titanic)

# ============================================
# 2. Identifying NA/empty cells
# ============================================
sum(is.na(uforeport))  # Total NA in Excel
sum(is.na(titanic))    # Total NA in CSV

which(is.na(uforeport))  # Positions of NA in Excel
which(is.na(titanic))    # Positions of NA in CSV

# Demo for small dataset
demo <- c(1, 2, NA, 4, NA, 6, 7)
sum(is.na(demo))
which(is.na(demo))

# Count of NA per column
sapply(uforeport, function(x) sum(is.na(x)))
sapply(titanic, function(x) sum(is.na(x)))

# ============================================
# 3. Managing NA/empty cells
# ============================================
dim(uforeport)
uforeport_cleaned <- na.omit(uforeport)
dim(uforeport_cleaned)

dim(titanic)
titanic_cleaned <- na.omit(titanic)
dim(titanic_cleaned)

# ============================================
# 4. Filtering values in data frame
# ============================================
# 4.1 Install and load dplyr
install.packages("dplyr")
library(dplyr)

# 4.2 Get column names
colnames(uforeport_cleaned)
colnames(titanic_cleaned)

names(uforeport_cleaned)
names(titanic_cleaned)

# 4.3 Rename unconventional variable names
names(uforeport_cleaned) <- gsub(" ", "_", colnames(uforeport_cleaned))
names(uforeport_cleaned)

# 4.4 Filtering examples
filter(uforeport_cleaned, City == 'Belton')
filter(uforeport_cleaned, Colors_Reported == 'GREEN')
filter(titanic_cleaned, sex == 'female')
filter(titanic_cleaned, fare > 500)

# ============================================
# 5. Searching in data frame
# ============================================
# Multiple conditions
filter(titanic_cleaned, sex == 'female' & fare > 500)
titanic_cleaned %>% filter(sex == 'female', fare > 500)

ufo_green <- uforeport_cleaned %>% filter(Colors_Reported == 'GREEN')

# ============================================
# 6. Arranging values in data frame
# ============================================
# Sort Titanic by fare
titanic_sortbyfare <- arrange(titanic_cleaned, fare)       # Ascending
titanic_sortbyfare <- arrange(titanic_cleaned, desc(fare)) # Descending

# ============================================
# 7. Exporting data frame to Excel and CSV
# ============================================
install.packages("xlsx")
library(xlsx)

write.xlsx(ufo_green, "ufo_green.xlsx")       # Save as Excel
write.csv(titanic_sortbyfare, "titanic_sortbyfare.csv")  # Save as CSV