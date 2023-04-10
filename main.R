
library(BrainCon)

# data ? popsimA
data(popsimA)
data(popsimB)
# estimating partial correlation coefficients by lasso (scaled lasso does the same)
E1 <- population.est(popsimA, type = 'l')
E2 <- population.est(popsimB, type = 'l')
# Identify differences of partial correlations between two populations
 DP.Cor <- population2sample.test(E1, E2, simplify = TRUE)
# Identify differences of partial correlations
# between two populations using Genovese and Wasserman's method
DP.Cor1 <- population2sample.test.MinPv(E2, E2)
