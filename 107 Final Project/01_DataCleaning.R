## Call, Merge, and Clean Data

mhi = read.csv("../ACSDT5Y2023.B19013-Data.csv") 
## median household income by county data
mhi = mhi[-1, ]
#Remove sentences in raw data
mhi <- mhi %>%
  rename(
    Median_Household_Income = B19013_001E,
    Income_MOE = B19013_001M
  )
## rename columns in raw data set for better readability 
dp = read.csv("../PLACES__Local_Data_for_Better_Health,_County_Data,_2025_release_20261102.csv")
## disease percentage by county data

mhi$FIPS = substr(mhi$GEO_ID, nchar(mhi$GEO_ID) - 4 ,nchar(mhi$GEO_ID))
dp$FIPS = as.numeric(dp$LocationID)
comp_data$Median_Household_Income <- as.numeric(comp_data$Median_Household_Income)
comp_data$TotalPopulation <- as.numeric(comp_data$TotalPopulation)
#clean each dataset and have a similar row of FIP codes
#convert necessary variables (Median_Household_Income, TotalPopulation) to numeric values 
comp_data = merge(mhi, dp, by = "FIPS")
#combine the two datasets into a single dataset to make comparisons easier

comp_data = comp_data %>%
  select(
    FIPS,
    NAME,
    Median_Household_Income,
    Year,
    Measure,
    MeasureId,
    Data_Value,
    TotalPopulation
  )
#clean comparison data to the columns we need
