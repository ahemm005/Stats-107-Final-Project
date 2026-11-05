# ==========================================
# 02_DiabetesAnalysis.R
# Analysis of Median Household Income vs. Diabetes Prevalence
# ==========================================

# 1. Load required libraries
library(tidyverse)
library(ggplot2)

# 2. Load the clean dataset from 01_DataCleaning.R
new_data <- read.csv("cleaned_county_data.csv")

# 3. Filter dataset for specific disease (Diabetes)
diabetes_data <- new_data %>% 
  filter(MeasureId == "DIABETES")
#diabetes_data contains data from counties 

view(diabetes_data)

# 4. Summary statistics for key variables
summary(diabetes_data$Median_Household_Income)
summary(diabetes_data$Data_Value)
# Median_Household_income between $25,425 and $178,707 for all counties with diabetes prevelance
# Data_Value reprsents the percentage of adults in the county diagnosed with that disease
# Percentage of Diabetes Prevelance range from 4.90% to 25.50%  

# Standard deviations
sd(diabetes_data$Median_Household_Income, na.rm = TRUE)
sd(diabetes_data$Data_Value, na.rm = TRUE)

# 5. Linear regression model
model <- lm(Data_Value ~ Median_Household_Income, data = diabetes_data)

# 6. Statistical Results
summary(model)

# 7. Scatter plot with a regression trendline
ggplot(diabetes_data, aes(x = Median_Household_Income, y = Data_Value)) +
  geom_point(alpha = 0.3, color = "steelblue") +
  geom_smooth(method = "lm", color = "darkred", se = TRUE) +
  labs(
    title = "County Median Household Income vs. Diabetes Prevalence",
    subtitle = "CDC PLACES & US Census ACS Data",
    x = "Median Household Income ($)",
    y = "Diabetes Prevalence (%)"
  )

