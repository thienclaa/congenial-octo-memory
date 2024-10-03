# Logistics Regression		
# Clear the environment
rm(list = ls())
# Read this excel file  (sheet = Logistic)
c <- read_excel("Example2.xlsx", sheet = "Logistic")
# Data preparation
head(c)
list(c)
names(c)
summary(c)

# Divide Credit Scores by 10 and Incomes by 1000 in R and do Logistics Regression.
  # Transform the data
`CreditScores` <- transform(c$`Credit scores`/ 10); `CreditScores`
`Incomes` <- transform(c$Income /100); `Incomes`
  # Combine transform data to the original data
data1 <- c(`Incomes`, `CreditScores`,c); data1
  # Rename updated data
names(data1)[1:2] <- c("New Income", "New Credit scores")
data.frame(data1)
names(data1)
  # Logistics Regression
`LogisReg`<- glm(`Loan Approved` ~ `New Credit scores` + `New Income` + `Neighborhood ranking`, 
data = data1, family =  binomial); `LogisReg`
summary(`LogisReg`)
  # Maximum the likelihood estimates of parameters
coef(`LogisReg`)
RegOut <- c(coef(`LogisReg`)); RegOut
# The probabilities of approval
  # Case a: Credit Scores = 830, Income = 64200, Neighborhood ranking = 2 (Divide Credit Scores by 10 and Incomes by 1000)
OddA <- exp(RegOut[1] + (RegOut[2]*83) + (RegOut[3]*642) + (RegOut[4]*2)); OddA
Prob1 <- OddA / (1 + OddA) * 100; Prob1
  # Case b: Credit Scores = 775, Income = 55500, Neighborhood ranking = 1
OddB <- exp(RegOut[1] + (RegOut[2]*77.5) + (RegOut[3]*555) + (RegOut[4]*1)); OddB
Prob2 <- OddB / (1 + OddB) * 100; Prob2
# Odds of loan approval for someone who lives in Neighborhood 1 as opposed to someone in Neighborhood 2
`Neighbor1 vs Neighbor2` <- OddB / OddA; `Neighbor1 vs Neighbor2`
