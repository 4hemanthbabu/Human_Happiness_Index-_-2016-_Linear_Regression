# Regression Analysis of Human Happiness Index 2016
# Using Libraries
library(ggplot2)
library(broom)
library(ggpubr)
#Reading the File
file = read.csv('~/Downloads/2016.csv')
print(file)
# First Ten Data
print(head(file, 10))
# Last Ten Data
print(tail(file, 10))
# Column Names of the Data
print(colnames(file))
# Dimention of the Data
print(dim(file))
# Inforation of the Data
print(?file)
# Summary of the Data
print(summary(file))
# Distribution of Happiness Score
hist(file$Happiness.Score)
# Realtionship Between Happiness Score and Economy
plot(Happiness.Score ~ Economy..GDP.per.Capita., data = file)
# Linear_Regression_Analysis
Happ_with_GDP = lm(Happiness.Score ~ Economy..GDP.per.Capita., data = file)
print(Happ_with_GDP)
summary(Happ_with_GDP)
par(mfrow = c(2,2))
plot(Happ_with_GDP)
graph_1= ggplot(file, aes(x = Happiness.Score, y = Economy..GDP.per.Capita.)) + geom_point()
print(graph_1)
graph_1 = graph_1 + stat_regline_equation(label.x = 3, label.y = 7)
print(graph_1)
graph_1 = graph_1 + theme_bw() + labs(title = 'Happiness_Score_and_GDP',x = 'Happiness_Score', y = 'Economy/GDP')
print(graph_1)