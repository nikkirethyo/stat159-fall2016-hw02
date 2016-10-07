#read advertising data in 
data <- read.csv("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw02/data/Advertising.csv")

#apply the linear regression model 
regression <- lm(formula=Sales ~ TV, data=data)

#summarize the regression 
summary <- summary(lm) 

#gather residuals from the regression
res <- resid(lm)

#plot the scatterplot with regression line
dev.new(width=5, height=4)
plot(data$TV, data$Sales, main="Linear Regression: Sales ~ TV", col="red", xlab="TV", ylab="Sales", pch=16, cex=.75)
abline(regression, col="blue")
segments(data$TV, data$Sales, data$TV, (data$Sales - res), lwd=.5)

