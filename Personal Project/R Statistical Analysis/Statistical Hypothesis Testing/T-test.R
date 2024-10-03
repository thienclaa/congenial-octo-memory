# T-test for Single Population
# Clear the environment
rm(list = ls())
# Info; write to Console
name1 <- "Lucky"; name1
# Assign dir1 to the folder where this excel data file is. 
dir("~/Desktop/DA Porfolio/Adv Stat R/Statistical Hypothesis")
# Set the working directory to dir1
setwd("~/Desktop/DA Porfolio/Adv Stat R/Statistical Hypothesis")
# Load readxl library
library(readxl)
# Read this excel file  (sheet = t-test)
a <- read_excel("Example2.xlsx", sheet = "t-test")

# Check the Hypothesis (below) for  Alpha = 2.5%. 
  # H0:  µ = 150
  # H1:  µ ≠ 150
# Calculate Mean, Stdev, Sx-bar
  # Mean
m <- colMeans(a, na.rm = TRUE); m
  # Stdev
s <- sapply(a, sd); s  
  #Sx-Bar
n <- lengths(a); n
sx_bar <- s/sqrt(n); sx_bar
# Use T-test to find P - Value and Upper and Lower Cut-off points
test1 <- t.test(a, mu = 150, alternative = "two.sided"); test1
  # Upper and Lower cut-off points.
`Lower and Upper` <- test1[["conf.int"]]; `Lower and Upper`
  # Another way to find Upper and Lower Cut-off points
Critical <- qt(0.975, n-1, lower.tail = TRUE)
`UpperCutOff` <- m + Critical * sx_bar
`LowerCutOff` <- m - Critical * sx_bar
  # P-Value
`P-Value` <- test1[["p.value"]]; `P-Value`
# Decision is conducted base on the P-value to decide whether to reject the hypothesis
Decision <- "Fail to reject null"; Decision