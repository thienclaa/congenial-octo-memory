#  Clear the environment
rm(list = ls())
# your info (LastName_FirstName); write to Console
name1 <- "Lucky"; name1
#  Assign dir1 to the folder on your computer where this excel file is. 
dir("/Users/luckyla/desktop")
#  set the working directory to dir1
setwd("/Users/luckyla/desktop")
#  load readxl library
library(readxl)
# read this excel file  (sheet = Pioneer). 
aca <- read_excel("Example1.xlsx", sheet="Pioneer")
# rename the 2nd column to Quantity
names(aca)[2] <- "Quantity"
# Create a new vector Total which is Quantity x Price 
# (use fff$ for Headers that already exist in the Excel)
Total <- c(aca$Quantity*aca$Price)
aca <- data.frame(aca,Total)

# Create a new vector Commission which is Total x 0.10
Commission <- c(aca$Total*0.10)
aca <- data.frame(aca,Commission)

# add the new vectors to the excel file.  This will create two new columns.
write_xlsx(aca,".xlsx")
# Create output file name using name1.  All your output will go to this file.  
csvfile <- paste(name1,"_.csv",sep=""); csvfile
# send the output to the csv file you just created
sink(csvfile)
# Use cat function to write your name (First  Last).  This will be Row 1 of csv file.  
cat("NAME",sep = ",","Lucky La","\n")
# Use cat function to write your ID.  This will be Row 2 of csv file.
cat("ID",sep = ",","TCL200001","\n")
# write the length of the 1st column.  This will be Row 3 of csv file.
len1 <- length(aca$Part.No)
cat("LENGTH" , sep = "," , len1, "\n")
# Calculate and print the following values along with the labels (as shown above for length) to the CSV file  (in the order given below)
average price
cat("AVERAGE",sep = ",",mean(aca$Price),"\n")
min price
cat("MINIMUM",sep = ",",min(aca$Price),"\n")
max price
cat("MAXIMUM",sep = ",", max(aca$Price), "\n")
total quantity
cat("TOTAL QUANTITY",sep = ",",sum(aca$Quantity),"\n")
total commission
cat("TOTAL COMMISSION",sep = ",",sum(aca$Commission),"\n")
average commission
cat("AVERAGE COMMISSION",sep = ",",mean(aca$Commission),"\n")
std deviation of the commission (treat as sample)
cat("STD DEV COMMISSION",sep = ",",sd(aca$Commission),"\n")

# create a divider line.  This will be Row 11 of csv file.
cat("--------------------------------", "\n")
# write the updated table (the whole table) with fields separated by a comma
# This will be Row 12 of csv file.
write.table(aca, sep= "," , row.names=FALSE)
# Stop writing to the CSV file.
sink()