# README: R Statistical Analysis Script

## Overview
This script is part of a statistical analysis project. It includes tasks such as dataset filtering, visualization, summary statistics, hypothesis testing, and statistical modeling based on the Human Development Index (HDI) and related economic indicators.

## Author Information
- **Student ID:** s4000175

## Dataset
- **Source File:** `BE_A1-2.RData`
- **Description:** The dataset contains economic indicators, including GDP, inflation, HDI, Gini coefficients, and income groups, across various countries.

## Key Features
1. **Data Filtering:**
   - Filter the dataset for specific years and income groups.
   - Create subsets of data for analysis and comparison.
   - Save the filtered data to a new file, `s4000175-data-final.RData`.

2. **Visualization:**
   - Boxplots to display distributions of HDI, GDP growth, inflation, and Gini coefficients by income group.
   - Histograms to analyze GDP, GDP per capita, and inflation.

3. **Descriptive Statistics:**
   - Calculate mean, standard deviation, and summaries for GDP, GDP per capita, inflation, and other indicators.
   - Compare subsets of data, such as excluding specific countries (e.g., India).

4. **Hypothesis Testing:**
   - Confidence intervals for HDI and Gini coefficients.
   - One-tailed t-tests to assess hypotheses related to HDI.

5. **Advanced Analysis:**
   - Upper-tailed and lower-tailed hypothesis testing.
   - Comparison of means against fixed values.

## Prerequisites
- **R Version:** 4.x
- **Required Libraries:** None explicitly mentioned; the script uses base R functions.
- Ensure `BE_A1-2.RData` is available in the working directory.

## How to Use
1. **Set Up the Environment:**
   - Ensure R and RStudio are installed.
   - Place the `BE_A1-2.RData` file in the specified directory.

2. **Run the Script:**
   - Load the script in RStudio.
   - Execute sections sequentially to replicate the analysis and results.

3. **Modify File Paths:**
   - Update paths for data files if they differ from the defaults.

## Notes
- The script uses subsets of the dataset for specific analyses.
- Replace missing or problematic observations as necessary to ensure consistency.
- All analysis assumes the dataset adheres to the specified structure.

## Deliverables
- Filtered dataset saved as `s4000175-data-final.RData`.
- Visualizations (boxplots and histograms) for exploratory analysis.
- Results of hypothesis testing and statistical summaries.

## Contact
For any questions or further information, please contact the author through the appropriate academic channels.
