#read data into R
data <- read.csv("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw02/data/Advertising.csv")

#apply simple linear regression model 
lm <- lm(formula=Sales ~ TV, data=data)

#extract regression coefficients info 
table1 <- round(summary(lm)$coefficients, 2)

#extract regression quality indices 
RSE <- round(summary(lm)$sigma, 2)
RR <- round(summary(lm)$r.squared, 2) 
Fstat <- round(summary(lm)$fstatistic[[1]], 2)
table2 <- matrix(c(RSE,RR,Fstat), nrow=3, ncol=1)
rownames(table2) <- c("Residual Std Error", "R Squared", "F statistic")
colnames(table2) <- c( "Value")

#histogram for tvs
tvhist <- hist(data$TV, xlab="TV", main="Histogram of TVs")

#histogram for sales
saleshist <- hist(data$Sales, xlab="Sales", main="Histogram of Sales")
