# Code for group challenge question
# https://docs.google.com/spreadsheets/d/10KFsF4zlGmAb7HVr5qG82Wxw4Xnu1tRQEcJ9AHuQuU0/edit?usp=sharing

library(tidyverse)
library(broom) #part of newest tidyverse release, but not older ones...
library(scales) # to format axis in dollars

prop_data <- read_csv("https://raw.githubusercontent.com/ttimbers/UBC-stat-sample-lesson/master/data/acs_data.csv")
head(prop_data)

ggplot(prop_data, aes(y = median_property_value, x = mean_commute_minutes)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ylab("Median State property value in 2015") +
  xlab("Mean State commute time (min)") +
  scale_y_continuous(labels = dollar)

prop_model2 <- lm(median_property_value ~ mean_commute_minutes, data = prop_data)