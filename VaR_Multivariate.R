

#Multivariate timeseries VAR Project

#load required package

library(urca)
library(vars)
library(mFilter)
library(tseries)
library(forecast)
library(tidyverse)

#load the dataset
df= read.csv()

#Declare our time series variable

E <- ts(df$EChange, start = c(2015,1), frequency =  4)
N <- ts(df$NChange, start = c(2015,1), frequency = 4)
I <- ts(df$Ichange, start = c(2015,1), frequency =  4)


#plot the series
autoplot(cbind(E,I,N))

#stationary check
adf.test(E)
adf.test(N)
adf.test(I)

#Check optimum lag of variable
VARselect(E)
VARselect(I)
VARselect(N)


#Combined variable
okun.bv <- cbind(E,N,I)
colnames(okun.bv) <- cbind("EChange", "NChange", "Ichange")

# Building VAR
Model0kun1 <- VAR(okun.bv, p = 4, type = "const", season = NULL, exog = NULL)
summary(Model0kun1)

#Diagnosig the VAR

#Heteroscedasticity
Arch1 <- arch.test(ModelOkun1, lags.multi = 12, multivariate.only = TRUE)
Arch1

#Normal Distribution of the Residuals
Norm1 <- normality.test(Model0kun1, multivariate.only = TRUE)
Norm1
#Testing for structural breaksin the residuals
Stability1 <- stability(Model0kun1, type = "OLS-CUSUM")
plot(Stability1)

#Granger Causality
GI <- causality(Model0kun1, cause = "Ichange")
GI
GE <- causality(Model0kun1, cause = "EChange")
GE
GN <- causality(Model0kun1, cause = "NChange")
GN

# Impulse Response Functions
irf <- irf(Model0kun1, impulse = "NChange", response = "Ichange", n.ahead = 20, boot = TRUE)
plot(irf, ylab = "I", main = "Shock from N")
irf <- irf(Model0kun1, impulse = "EChange", response = "Ichange", n.ahead = 20, boot = TRUE)
plot(irf, ylab = "I", main = "Shock from E")


#Variance Decomposition
FEVD1 <- fevd(Model0kun1, n.ahead = 10)
plot(FEVD1)

