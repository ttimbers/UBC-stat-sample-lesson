# R code for Sample lesson - Simple linear regression models in R
# https://github.com/ttimbers/UBC-stat-sample-lesson
# by Tiffany Timbers, Ph.D.
# created June 2017

# load libraries
library(tidyverse)
library(scales)
library(broom)

#############################################################################

# load the data and peak at it as a table:
prop_data <- read_csv("https://raw.githubusercontent.com/ttimbers/UBC-stat-sample-lesson/master/data/acs_data.csv")
# or if you are not connected to internet:
# prop_data <- read_csv("data/acs_data.csv") 
head(prop_data)

#############################################################################

# visualize the data as a scatter plot:
(prop_data_scatter <- ggplot(prop_data, aes(y = median_property_value, x = income)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  xlab("Median State household income in 2015") +
  ylab("Median State property value in 2015") +
  scale_x_continuous(labels = dollar) +
  scale_y_continuous(labels = dollar))

#############################################################################

# fit a linear model
prop_model <- lm(median_property_value ~ income, data = prop_data)
summary(prop_model)

#############################################################################

# Extracting model output in base R
# coefficient estimates
prop_model$coefficients
# coefficient estimates p values
summary(prop_model)$coefficients[,4]
# residuals} 
prop_model$residuals
# predicted/fitted values:
prop_model$fitted.values
# sigma
summary(prop_model)$sigma
# R squared
summary(prop_model)$r.squared

#############################################################################

# Extracting model output using the `broom` package
# using tidy to get model parameters (e.g., coefficients and p-values)
tidy(prop_model)
# using augment to get output related to model data (e.g., residuals and predicted values)
augment(prop_model)
# using glance to get output related to model quality, complexity and summaries (e.g., R squared and sigma)
glance(prop_model)