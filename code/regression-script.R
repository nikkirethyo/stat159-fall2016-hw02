#read advertising data in 
data <- read.csv("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw02/data/Advertising.csv")

#apply the linear regression model 
regression <- lm(formula=Sales ~ TV, data=data)

#summarize the regression 
sum <- summary(regression) 

#gather residuals from the regression
res <- resid(regression)

#plot the scatterplot with regression line, save as png and pdf
png("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw02/images/scatterplot-tv-sales.png")
plot(data$TV, data$Sales, main="Linear Regression: Sales ~ TV", col="red", xlab="TV", ylab="Sales", pch=16, cex=.75)
abline(regression, col="blue")
segments(data$TV, data$Sales, data$TV, (data$Sales - res), lwd=.5)
dev.off()
pdf("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw02/images/scatterplot-tv-sales.pdf")
plot(data$TV, data$Sales, main="Linear Regression: Sales ~ TV", col="red", xlab="TV", ylab="Sales", pch=16, cex=.75)
abline(regression, col="blue")
segments(data$TV, data$Sales, data$TV, (data$Sales - res), lwd=.5)
dev.off()

#save binary rdata file to data directory 
setwd("/Users/nrethmeier/Documents/stat159/stat159-fall2016-hw02/data")
save(data, regression, sum, res, file="regression.Rdata")

