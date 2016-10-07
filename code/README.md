#Code files for stat159 hw02

##eda-script.R 

This file applies a simple linear regression model to TV and Sales variables in Advertising.csv data. It provides 2 tables for regression coefficients and then regression quality indices. Furthermore, it explores the TV and Sales variables, creating histograms for both variables. The script outputs the 2 tables in eda-output.txt and the histograms as PNGs and PDFs.

##regression-script.R 

This file reads in the Advertising.csv data and applies a simple linear regression model to TV and Sales. It then computes the summary of this regression and the residuals. From there is creates a scatterplot of the values of Sales over TV, including the regression line. It also plots the residuals, as the distance between the actuals and the regression line. Finally the script saves the regression object and others to and .Rdata file.  
