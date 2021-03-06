# MechaCar Statistical Analysis
## Module 15 Challenge

## Overview and Purpose

- AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on the data analytics team to review the production data for insights that may help the manufacturing team:

1. Perform multiple linear regression analysis to find which variables in the dataset predict the mpg of MechaCar prototype.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3. Run t-tests to decide if the manufacturing lots are statistically different from the mean population.
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results and Analysis

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/88692025/145738416-95b04040-bc2a-4505-a94f-49802cb8566a.PNG)

### Which variables/coefficients supplied a non-random amount of variance to the mpg values in the dataset?
- As seen in the picture above, the multiple linear regression analysis shows that the variables ground clearance and vehicle length supply a nonrandom amount of variance on the mpg value. The p-value for both of these is less than the nonrandom requirement of 0.05. Ground clearance at 5.21 x 10^-8 and vehicle length at 2.5 x 10^-12, respectively.
### Is the slope of the linear model considered to be zero? Why or why not?
- The equation of the line above seen in the image shows all variables and the intercept as non-zero values, therefore the slope of the linear regression is nonzero as well.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- With two strong impacting variables, our model does an above 50% r squared of 71%, showing that it is correct but with another variable that has a low p-value the model can become even more effective.

## Summary Statistics on Suspension Coils

![Suspension Coil Total Summary](https://user-images.githubusercontent.com/88692025/145752379-a4bf7552-2568-41ca-b08b-bfcc0052bd33.PNG)

![Suspension Coil Lot Summary](https://user-images.githubusercontent.com/88692025/145752390-b630beab-729f-4cd9-a406-ce63fc19c5b8.PNG)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 
- The screenshots of the total lot summary show a variance of 62.3, this is well below the desired 100 pound per square inch variance. This means the suspension coils do not exceed largest variance and therefore meet all the design specification for manufacturing lots. That can be said about the whole lot summary, however when examining the specific lots, we see lot 1 and 2 are well below the 100-variance threshold at 1 and 7.5 variance each, respectively. Lot 3 skews the variance for the total summary with a variance of 170, meaning that they do not meet the 100 per square inch PSI threshold requirement.

## T-Tests on Suspension Coils

- T-Test: All manufacturing lots 

![T-Test Cumulative](https://user-images.githubusercontent.com/88692025/145753127-403f24f7-7684-420b-bc23-3d249a02cd7b.PNG)

- T-Test: Lot 1 

![T-Test Lot 1](https://user-images.githubusercontent.com/88692025/145753210-b2229f29-ef95-4c45-b2e7-f10d3ea3433b.PNG)

- T-Test: Lot 2

![T-Test Lot 2](https://user-images.githubusercontent.com/88692025/145753220-35cfd64b-c98b-4d56-b6ff-a64131ddc57a.PNG)

- T-Test: Lot 3

![T-Test Lot 3](https://user-images.githubusercontent.com/88692025/145753223-c759af4d-fe6f-4b01-a771-0bb2e5e8af69.PNG)

- All Manufacturing Lots: With a p-value of (0.06028), the null hypothesis cannot be rejected. the mean value is at 1498 and the p value is larger than the 0.05 needed. so, the distribution of the data is not statistically significant to differentiate versus the normal distribution.
- Lot 1: With a p-value of 1, well above 0.05, it is clear that the distribution is not significantly different from the normal distribution.
- Lot 2: With a p-value of 0.6072, the distribution is not significantly different from the normal distribution.
- Lot 3: With a p-value of 0.04168, it is clear that the distribution is significantly different from the normal distribution. Since this is below the p value threshold of 0.05.

## Study Design: MechaCar vs Competition

After careful consideration of the statistical analysis used to compare Mech car to a variety of competition, in order to decide what a consumers would value we must think about what variables and factors would interest consumers. Nowadays, good mileage and environmentally friendly vehicles are the most demanded. 

- Metrics to be evaluated
In order to see how economical Mech Car vehicles are against competition, the metrics that will be used are highway and city mpg and fuel efficiency, horsepower and cost. 

- Null and Alternate Hypothesis
Hypothesis: MechaCar cars fuel efficiency is similar to competitor's vehicles in the same vehicle class 
Null Hypothesis: MechaCar cars fuel efficiency is worse or better than competitor vehicles.

- Statistical Test
Best test for this purpose is do Two-Sample T-Tests.

- Data Needed
MPG data and fuel efficiency data from all MechaCar cars, and the competitor vehicles.
