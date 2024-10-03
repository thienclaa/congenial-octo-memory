# Clear the environment
rm(list = ls())
# your info (Name); write to Console
name1 <- "Lucky"; name1
# Load Moments library  (do not install any package in any assignments)
library(moments)
# Create output file name using name1.
csvfile <- paste(name1,"_Output2.csv",sep=""); csvfile
# Instruct to send all the output of your calculation  to a csv file 
sink(csvfile)
# Use cat function to write your name
cat("NAME",sep = ",","Lucky La","\n")
# Use cat function to write your ID
cat("ID",sep = ","," xxx200001","\n")

# Normal Distribution probability calculations
# Calculate the probabilities and print the result and  proper label for each
# Assume Mean = 80, Sigma = 13
 # Find P(X ≥  92)
`MoreThan92-Z` <- pnorm(92 , 80 , 13, lower.tail = FALSE)
cat("P(X  ≥  92)" , sep = "," ,`MoreThan92-Z`,"\n")
 # Find P(72 ≤ X ≤ 95)
`MoreThan72&LessThan95-Z` <- pnorm(95, 80, 13, lower.tail = TRUE) - pnorm(72, 80, 13, lower.tail = TRUE)
cat("P(72 ≤ X ≤ 95)" , sep = "," ,`MoreThan72&LessThan95-Z`,"\n")
 # Find the cut-off for top 10%.
`Cutofftop10%` <- qnorm(.90, 80, 13, lower.tail = TRUE)
cat("Cut-off for top 10%" , sep = "," ,`Cutofftop10%`,"\n")
 # Find the cut-off for bottom 12%.
`Cutoffbot12%` <- qnorm(.12, 80, 13, lower.tail = TRUE)
cat("Cut-off for bottom 12%" , sep = "," ,`Cutoffbot12%`,"\n")

# T-Distribution
# Assume  Mean = 80,  std dev = 13, sample size = 23
Mean <- 80
Std <- 13
 # Find the cut-off for top 10%.
CritValueTop <- qt(0.9, 22, lower.tail = TRUE)
`Top10%t-dist` <- CritValueTop * Std + Mean
cat("Top 10% t-dist" , sep = "," ,`Top10%t-dist`,"\n")
 # Find the cutoff for bottom 12%.
CritValueBot <- qt(0.12, 22, lower.tail = TRUE)
`Bot12%t-dist` <- CritValueBot * Std + Mean
cat("Bottom 12% t-dist" , sep = "," ,`Bot12%t-dist`,"\n")

# Generate a normal distribution with mean = 83, sigma = 27, n  = 200
# Assign it to a vector. Assume nm1 is a population.
nm1 <- rnorm(200,83,27)
# Make all the numbers of vector nm1  integer
integer <- as.integer(nm1)
# For nm1, find the following  and print the values and label.   
 # Mean
Mean <- mean(nm1)
cat("Mean" , sep="," , Mean , "\n")
 # Population Std Dev (R gives sample std dev. Convert it into population std dev)
n <- length(nm1)
`Sample std dev` <- sd(nm1)
`Population std dev` <- sqrt((`Sample std dev`^2) * ((n-1)/n))
cat("Standard Deviation" , sep="," , `Population std dev`, "\n")
 # Skewness
Skewness <- skewness(nm1)
cat("Skewness" , sep="," , Skewness , "\n")

# Numbers outside µ ± 2σ will be treated as outliers. Determine the upper and lower
# cut-off numbers.  Also the number of outliers. Label everything.
 # What is the upper cut-off number?
UpperCutoff <- Mean + 2*`Population std dev` 
cat("Upper Cut-off Number" , sep="," , UpperCutoff , "\n")
 # What is the lower cutoff number? 
LowerCutoff <- Mean - 2*`Population std dev`
cat("Lower Cut-off Number" , sep="," , LowerCutoff , "\n")
 # How many numbers are more than the upper cutoff number?  Use length function.
NumsAboveCutoff <- length(nm1[nm1>UpperCutoff])
cat("Numbers above Upper Cut Off" , sep="," , NumsAboveCutoff , "\n")
 # How many numbers are below the lower cutoff number?  Use length function. 
NumsBelowCutoff <- length(nm1[nm1<LowerCutoff])
cat("Numbers below Lower Cut Off" , sep="," , NumsBelowCutoff , "\n")

# create a divider line
cat("--------------------------------", "\n")
 # Write summary statistics of nm1
summary(nm1)
# create a divider line
cat("--------------------------------", "\n")
# write the vector nm1 in one column
cat(nm1, sep="\n")

# Stop writing to the CSV file.  
sink()

# Partition the graph area into 4 parts (2 rows and 2 columns). 
# This will print all 4 graphs below on one screen.
# par(mfrow=c(2,2))
 # Density plot of nm1
d1 <- density(nm1);  plot(d1)
 # Box plot of nm1
b1 <- boxplot(nm1, main="Boxplot")
 # Histogram of nm1
h1 <- hist(nm1)
 # QQ plot of nm1
q1 <- qqnorm(nm1)


