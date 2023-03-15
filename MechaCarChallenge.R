setwd("/Users/juliandiaz/Desktop/Homework_Assignments/16-Statistics_R/Resources")
library(tidyverse)
mechacar <- read.csv("MechaCar_mpg.csv")

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar)
head(mechacar)

summary(model)

suspension_coil <- read.csv("Suspension_Coil.csv")
head(suspension_coil)

total_summary <- suspension_coil %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# View the total_summary dataframe
total_summary



lot_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot) %>%
  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# View the lot_summary dataframe
lot_summary

# Perform t-test for all manufacturing lots
t_test_all_lots <- t.test(suspension_coil$PSI, mu = 1500)
print("T-test for all manufacturing lots:")
print(t_test_all_lots)

# Perform t-tests for each manufacturing lot
manufacturing_lots <- unique(suspension_coil$Manufacturing_Lot)

for (lot in manufacturing_lots) {
  subset_data <- subset(suspension_coil, Manufacturing_Lot == lot)
  t_test_lot <- t.test(subset_data$PSI, mu = 1500)
  print(paste("T-test for", lot))
  print(t_test_lot)
}



