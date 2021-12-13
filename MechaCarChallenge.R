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


# Deliverable 2: Create Visualizations for the Trip Analysis

# Create Suspension Coil Lot Analysis
# Create a Data Frame from CSV file
suspension_coil_df <- read.csv(file = './resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil_df)
# Create a summary
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# Create specific summaries for each lot
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


# Deliverable 3: T-Tests on Suspension Coils


# Create T-Tests on suspension coils
t.test(suspension_coil_df$PSI, mu=1500)

t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)