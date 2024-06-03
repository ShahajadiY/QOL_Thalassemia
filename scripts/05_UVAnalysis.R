#load packages
library(tidyverse)
library(gtsummary)
library(gt)
library(easystats)
#import data
data <- read.csv("data/QOL_Thalassemia_preprocessed.csv")

#univariate linear regression Analysis(numeric/continuous)
#y (Total_SF_Score) =mx(Gender)+c

uv_lin_model <- lm(Total_SF_Score ~ Gender, data = data)

#summary
summary(uv_lin_model)

#interpretation
report(uv_lin_model)

#factors associated with quality of score in the univariate linear regression analysis
data |> 
  select(1:8, Total_SF_Score) |> 
  tbl_uvregression(
  method = lm,  
  y = Total_SF_Score  
  ) |> 
  bold_p(t =0.05) |> 
  as_gt() |> 
  gtsave("table/Table6_UV_LinReg.docx")

#add ref manually
data$QOL_Status_Binary <- relevel(data$QOL_Status_Binary, ref = "poor")

data |> 
  select(1:8, Total_SF_Score) |> 
  tbl_uvregression(
    method = lm,  
    y = Total_SF_Score,
    add_estimate_to_reference_rows = TRUE #this adds 1 to the coef row
  ) |> 
  bold_p(t =0.05) |> 
  as_gt() |> 
  gtsave("table/Table6_UV_LinReg.docx")





#factors associated with quality of score in the univariate linear regression analysis
data |> 
  select(1:8, QOL_Status_Binary_Code) |> 
  tbl_uvregression(
    method = glm,  
    y = QOL_Status_Binary_Code,
    method.args = list(family = binomial),
    exponentiate = T
  ) |> 
  bold_p(t =0.05) |> 
  as_gt() |>
  
  gtsave("table/Table6_UV_LinReg.docx")






 








