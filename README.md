# Stats 107 Final Project / Alexandra Hemmerling, Vanessa Phavong, Andrea Ayala
Hello!! Welcome to STAT107 group 5’s Final Project repository. In our project, we analyze the relationship between the prevalence of 
different diseases and median household income. Our end goal with this project is to find an answer as to why there is a correlation (if 
any)! Use this guide to find our report in the repository and reproduce our analyses yourself! (Below the guide, we have added an appendix with specific file information.)

# Guide
This repository includes two .csv data files and a folder for the project, all on the main branch! Download these.

The two data files are named:

- PLACES__Local_Data_for_Better_Health,_County_Data_,_2025_release_20261102.csv
  - This is our CDC data!

- ACSDT5Y2023.B19013-Data.csv
  - This is our Census data!

The folder ‘107 Final Project’ is where you’ll find multiple files necessary to conduct the report. Open the files and run the code in
this order:

1. 00_requirements.R
   - This is an Rscript file containing necessary packages for the code!
2. 01_DataCleaning.R
   - This is an Rscript file containing our code to clean the two data sets and compile into one set! (’10_Cleaning&Processing.Rmd’
     contains this same code with directions for clarity)
3. cleaned_county_data.csv
   - This is a .csv file where we stored the compiled and cleaned data from the previous step!
4. 02_DiabetesAnalysis.R
   - This is an Rscript file containing the code visualizing the correlation between diabetes and income, our first analysis!
5. 11_Visualizations.Rmd
   - This is an RMarkdown file containing the code for two analyses: the diabetes from the previous step and our second analysis
     (depression correlation!)

The folder ‘107 Final Project’ also contains the Halfway report for this project:

- FinalReportDraft.Rmd
  - This is an Rmarkdown file containing the Halfway Report! Analysis of the correlations is found here as well as insight into the meaning
    of these discoveries. Check here to see the individual contributions.

Our repository also contains the following files which were necessary for its ability to run and for the report submission requirements (replicated files in pdf versions). These files do not need to be opened to reproduce the results.

- 10_Cleaning&Processing.pdf
- 11_Visualizations.pdf
- FinalReportDraft.pdf
- Visualizations.pdf
- main branch:
  - .gitattributes
  - .gitignore


# APPENDIX

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

