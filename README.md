# Stats 107 Final Project
This is the final project for group 5 in the class Stats 107. In our project, we analyze the relationship between the prevalence of different diseases and median household income. Our end goal with this project is to find an answer as to why there is a correlation (if any)-
Alexandra Hemmerling, Vanessa Phavong, Andrea Ayala

DATA FILES:
# ACSDT5Y2023.B19013-Data.csv
-   Contains Median Household Income in the Past 12 months (in 2023 Inflation-Adjusted Dollars) The file contains the following columns:
-   GEO_ID & NAME: Geographic identifiers and names of the county and state.
-   B19013_001E: Median household income for each geographic area
-   B19013_001M: Margin of error associated with the median income
# PLACES__Local_Data_for_Better_Health,_County_Data,_2025_rele ase_20261102.csv
-   Contains public health data by county across the United States Key categories of the data set includes
-   StateDes: The name of the state
-   LocationName: The specific county in the state
-   MeasurelD: The specific chronic disease that is most prevelant in that county (Diabetes, obesity, stroke, depression, etc.)
-   DataValue: The percentage of adults diagnosed with the specific disease in that county

R FILES:
# 00_requirements.R
- required packages needed (so far: tidyverse, dplyr ggplot2)

# 01_DataCleaning.R
- import, clean, and rename the two data sets
- merge them to one data frame, including necessary columns 
- create a new .csv file cleaned_county_data which is the merged and cleaned data set

# 02_DiabetesAnalysis.R
-   Loads cleaned county dataset and filters rows to isolate diabetes records.
-   Calculates min, max, means, medians, and sd for median household income and diabetes prevelance
-   Quadratic regression model
-   Generated a scatterplot that compares Median Household Income to Diabetes Prevelance %

# FinalReportDraft
- Our final report including the necessary outline and individual contributions 

