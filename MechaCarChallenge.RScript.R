#loading dpLyr
library(tidyverse)
install.packages("dplyr")
library(dplyr)

#Read in MechaCar_mpg.csv

#reading in csv file
MechaCar_mpg_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

#Linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_df))


#Read in Suspension_Coil.csv
Suspension_Coil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

#total summary of PSI
total_summary <- Suspension_Coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#create lot summary
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot)%>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#use T-test
t.test(Suspension_Coil_table$PSI,mu=1500)

#use t-test and subset to determine if each lot is different from the mean
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)
