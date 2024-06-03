#install packages
install.packages("gtsummary")
install.packages("gt")
#load packages
library(tidyverse)
library(gtsummary)
library(gt)

#import data
data <- read.csv("data/QOL_Thalassemia_preprocessed.csv")

#demographic characteristics of study percipants
data |> 
  select(1:8) |> 
  tbl_summary(statistic = list(
    all_continuous() ~ "{mean} ({sd})"
    )) |> 
  as_gt() |> 
  gtsave("table/Table1_Demographics.docx")
# clinical characteristics of thalassemia patients
 
  gtsave("table/Table1_Demographics.docx")

data |> 
  select(9:17) |> 
  tbl_summary(type =  all_categorical() ~ "categorical",
              statistic = list(all_continuous() ~ "{mean} ({sd})")) |> 
  as_gt() |> 
  gtsave("table/Table2_clinicalchars.docx")




















l