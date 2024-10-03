# ANOVA Single Factor
# Clear the environment
rm(list = ls())
# Read this excel file  (sheet = ANOVA)
b <- read_excel("Example2.xlsx", sheet = "ANOVA")
# Run an ANOVA test with a significance level of 5%
# The 4 Box plots
bplots <- boxplot(b$Stocks ~ b$City, main = "ANOVA", ylab = "Stocks", xlab = "City")
# Run ANOVA test
anov1 <- aov(b$Stocks ~ b$City)
summary(anov1)
# Filter the data set to run t-test
filter1 <- c(b$City=="Boston" | b$City=="Dallas")
`Bos&Dal` <- b[filter1,]

filter2 <- c(b$City=="Pittsburgh" | b$City=="Seattle")
`Pittb&Seattle` <- b[filter2,]
# T-test of 2 different groups
test1 <- t.test(`Bos&Dal`$Stocks ~ `Bos&Dal`$City, alternative="two.sided"); test1
test2 <- t.test(`Pittb&Seattle`$Stocks ~ `Pittb&Seattle`$City, alternative="two.sided"); test1
  # 4 means
`Mean of Boston` <- test1[["estimate"]][["mean in group Boston"]]; `Mean of Boston`
`Mean of Dallas` <- test1[["estimate"]][["mean in group Dallas"]]; `Mean of Dallas`
`Mean of Pittsburgh` <- test2[["estimate"]][["mean in group Pittsburgh"]]; `Mean of Pittsburgh`
`Mean of Seattle` <- test2[["estimate"]][["mean in group Seattle"]]; `Mean of Seattle`
  # P-Value
`P-Value Boston & Dallas` <- test1[["p.value"]]; `P-Value Boston & Dallas`
`P-Value Pittsb & Seattle` <- test2[["p.value"]]; `P-Value Pittsb & Seattle`
  # F - Critical Value
`F-Critical` <- qf(0.05,3,302,lower.tail=FALSE); `F-Critical`
# Compare F-Value and F-Critical to decide whether to reject the hypothesis
Decision <- "Reject the null as F-Value > F-Critical value of 2.635"; Decision
