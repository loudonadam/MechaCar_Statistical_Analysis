setwd("C:/Users/adam/Desktop/UNC Class/MechaCar_Statistical_Analysis")

library(dplyr)

#Deliverable 1

mpg_data <- read.csv(file='MechaCar_mpg.csv')

summary(lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, mpg_data))

#Deliverable 2

coil_data <- read.csv(file='Suspension_Coil.csv')

total_summary <- coil_data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance=var(PSI),SD=sd(PSI))

lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>%summarize(Mean = mean(PSI), Median = median(PSI), Variance=var(PSI),SD=sd(PSI))

