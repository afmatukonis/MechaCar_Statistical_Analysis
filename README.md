# MechaCar_Statistical_Analysis
Module-16

**Linear Regression to Predict MPG**

@@

Above is the summary statistics for the linear regression model using all six variables.

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
    - The variables that provided a non-random amount of variance to the mpg values were vehicle_length, vehicle_weight, and ground clearance because they had the highest p-vlaues. 

- Is the slope of the linear model considered to be zero? Why or why not?
    - The slope is not zero because each coefficent for the variables are not zero. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    - Since the R-squared value is 0.7149 it means tha the linear model predicts the mpg on the car prototypes effectively. 


**Summary Statistics on Suspension Coils**

@@ 

Above is the total_summary and below is the lot_summary.

@@

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
    - Based on the variances provided we can see that the total_summary has a variance of 62.29 and that is within in 100 PSI variance. Looking at the lot_summary variances we see that Lot1 and Lot2 have variances of 0.9796 and 7.469 respectivly, meaning they are well within range, but Lot3 has a variance of 170.3, exceeding the alloted variance. 

**T-Test on Suspension Coils**

@@
@@

- Above are the four T-Tests that were performed on the Suspension_Coil_Table. We performed the first T-test to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. Then we performed three more using the subset() argument to to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

    - For the first T-Test that compared across all manufacturing_lots we see that the p-value is 0.06028 and can conclude that there is no statisitcal significance between the manufacturing_lots and the population mean of 1500. 

    - Next looking at the T-Tests that were ran for each lot we can see that Lot1 had a p-value of 1, Lot2 had a p-value of 0.6072, and Lot3 had a p-value of 0.04168. From this we can determine that since Lot3 had a p-value below 0.05, there is a statistical significance between Lot3 and the mean population. 

**Study Design comparing MechaCar to the Competition**

For this study we will be comparing vehicle weight and MPG on MechaCars and their competition to see if the competition cars mpg will also be impacted by weight. For this study we will need the same variables as MechaCars; vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, and MPG. We will perform a linear regression on the compeition car data and see if the same variables impact mpg as in MechaCars. Then if they do we can see if MechaCars have a better MPG than the competition when looking at a specific weight or size. 