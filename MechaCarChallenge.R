setwd("C:/Users/adam/Desktop/UNC Class/MechaCar_Statistical_Analysis")

library(dplyr)

mpg_data <- read.csv(file='MechaCar_mpg.csv')

summary(lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, mpg_data))
