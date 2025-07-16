# Cardiovascular Disease (CVD) Analysis

As of 2025, cardiovascular disease (CVD) remains the leading cause of death worldwide, responsible for nearly 18 million deaths annually. Early identification of risk factors through patient data is essential in reducing its impact. I was provided with a dataset of **nearly 70,000** patient records that included both qualitative and quantitative health indicators. The goal was to analyze these records to better understand correlations between lifestyle factors and the presence of cardiovascular disease.

---

The goal of this project is to:
1. Clean and format a raw medical dataset for analysis
2. Develop SQL queries to explore patterns between cardiovascular disease and risk factors such as cholesterol, glucose, smoking, alcohol use, and physical inactivity
3. Uncover insights that could guide preventative strategies for heart health

---

## Actions
The work was structured in two main stages using SQL:

### Data Cleaning & Formatting 
[`Formatting Patient Data.sql`](https://github.com/ChidiebereMOk/CVD-Analysis/blob/main/Formatting%20Patient%20Data.sql)
- Converted numerical encodings (e.g., gender, cholesterol, activity levels)
- Standardized units for age, weight, and height
- Formatted the data to make the dataset readable and ready for analysis

### Data Analysis 
[`Analyzing Patient Data.sql`](https://github.com/ChidiebereMOk/CVD-Analysis/blob/main/Formatting%20Patient%20Data.sql)
- **Descriptive Statistics**:
  - Acounted for total patients and their gender distribution
  - Calculated average age and height
  - Calculated average patient BMI and its correlation with cardiovascular disease
- **Health Condition Analysis**:
  - Patient breakdown of thos with and without cardiovascular disease
  - Broke down disease prevalence by cholesterol** and glucose levels
- **Behavioral Risk Analysis**:
  - Grouped patients by combinations of lifestyle behaviors:
    - Smoking
    - Alcohol consumption
    - Physical inactivity
  - Compared how combinations of these behaviors correlated with the presence or absence of CVD
    
 ### Dashboard
[Tableau Dashboard](https://public.tableau.com/app/profile/mitchell.okere/viz/CardiovascularAnalysis/Dashboard2)

This dashboard includes:
- Patient distribution by gender and age
- BMI groups vs. cardiovascular disease prevalence
- Stacked bars showing CVD rates by cholesterol and glucose levels
- Visual comparison of lifestyle combinations (smoking, drinking, activity) and their CVD impact
- Filters that can be utilized to simulate various patient conditions

---

## Results
This project yielded several key insights:
  - Provided an understanding of the patient pool in their relational to the prevalance of CVD between the genders and BMI classes
  - Patients with higher cholesterol or glucose levels were more likely to have cardiovascular disease
  - The likelihood of CVD increased with combinations of negative behaviors like smoking, drinking, and physical inactivity
  - Even among those who were physically active, CVD was present in those who smoked or consumed alcohol frequently
