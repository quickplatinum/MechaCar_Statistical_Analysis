# Deliverable 1: Linear Regression to Predict MPG

library(dplyr)

# Create a Linear Regression to Predict MPG
# Create a Data Frame from CSV file
mechacar_mpg_df <- read.csv(file='./resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg_df)
# Create a Multiple linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)
# Find the p-value and r-squared
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))