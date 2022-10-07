# Deliverable 1
library(dplyr)
mecha_car <- read.csv("MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_car) %>% summary()

# Deliverable 2

coil_csv <- read.csv("Suspension_Coil.csv")
total_summary <- summarise(coil_csv, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- group_by(coil_csv, Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# Deliverable 3:

first_t_test <- t.test(coil_csv$PSI, mu = 1500)

# using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

lot1_t_test <- t.test(subset(coil_csv, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
lot2_t_test <- t.test(subset(coil_csv, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
lot3_t_test <- t.test(subset(coil_csv, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)