#install packages
install.packages("gtsummary")
install.packages("gt")
#load packages
library(tidyverse)
library(gtsummary)
library(gt)

#import data
data <- read.csv("data/QOL_Thalassemia_preprocessed.csv")
#Difference (2 groups)
#1 Normal ~ Parametric test ~ t-test
#2 Non-normal ~ Non-parametric test ~ wilcoxon rank sum test
#3 alpha (cut off) ~ p <= 0.05 ~ significant

data |> 
  select(Gender,18:25) |> 
   tbl_summary(type = everything() ~ "continuous",
              by = Gender) |> 
  add_overall() |> 
  add_p() |> 
  bold_p(t = 0.05) |> 
  as_gt() |> 
  gtsave("table/Table3_Difference_2G.docx")













