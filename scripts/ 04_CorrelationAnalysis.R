#load packages
library(tidyverse)
library(gtsummary)
library(gt)
install.packages("easystats") 
install.packages("github")
install.packages("ggfortify")
install_github('sinhrks/ggfortify')

install_github('ggfortify')

 
library(ggfortify); library(ggplot2)
data(iris)
iris.pca <- iris[c(1, 2, 3, 4)]
autoplot(prcomp(iris.pca))...

library(easystats)
#import data
data <- read.csv("data/QOL_Thalassemia_preprocessed.csv")

#Correlation Analysis (+1 - -1)
#r = 1 ~ perfect positive correlation
#r > .5 ~ strong positive correlation
#r = -1 ~ perfect negative correlation
#r > -.5 ~ weak positive correlation

cor(data$Total_SF_Score, data$Age_of_Participants)

cor(data$Total_SF_Score, data$Medical_Expense)

cor.test(data$Total_SF_Score, data$Age_of_Participants)

#create numeric data
corr_data <- data |>
  select(18:28)
#perform correlation analysis
corr_result <- correlation(corr_data)
#summary
corr_result |> 
  summary()
#report
corr_result |> 
  summary(redundant = T) |> 
  plot() |> 
  report()


install_github('sinhrks/ggfortify')

library(ggfortify); library(ggplot2)
data(iris)
iris.pca <- iris[c(1, 2, 3, 4)]
autoplot(prcomp(iris.pca))...





  
  
  





















