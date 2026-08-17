# Healthcare Data Analytics — Key Takeaways

## Project Overview

This project analyzes a healthcare dataset containing 55,500 records using SQL, Python and Power BI. The objective is to assess data quality, understand patient and admission patterns, analyze billing and length of stay, and communicate findings through an interactive dashboard.

## 1. Data Quality

- Total raw records: **55,500**
- Exact duplicate records: **534**
- Records after removing exact duplicates: **54,966**
- Missing values: **No missing values were identified across the dataset fields.**
- Admission and discharge dates were converted to datetime format.
- A derived **Length of Stay** measure was created from admission and discharge dates.

**Key takeaway:** The dataset required a duplicate-record check before analysis. Removing exact duplicates provides a cleaner analytical view while retaining the raw dataset for reconciliation.

## 2. Patient and Demographic Analysis

The project examines:

- Gender distribution
- Patient age distribution
- Blood-group distribution
- Medical-condition distribution

These dimensions establish the overall patient profile and identify which medical conditions account for the largest share of records.

## 3. Medical Condition Analysis

Medical conditions are compared by:

- Patient volume
- Average billing amount
- Average length of stay

This moves the analysis beyond simple counts and identifies conditions associated with different utilization and billing patterns.

## 4. Admission and Insurance Analysis

The project analyzes records by:

- Admission type
- Insurance provider
- Medical condition
- Billing amount

This provides a view of how the patient population is distributed across admission categories and insurance providers.

## 5. Billing Analysis

Billing analysis includes:

- Total billing amount
- Average billing amount
- Billing by medical condition
- Billing by insurance provider

These comparisons help identify groups with relatively higher or lower average billing and provide context for healthcare utilization patterns.

## 6. Length-of-Stay Analysis

A **Length of Stay** field was derived from admission and discharge dates.

The project compares length of stay across medical conditions and examines the relationship between:

**Length of Stay → Billing Amount**

This relationship is treated as exploratory and descriptive; the analysis does not claim that length of stay alone causes higher billing.

## 7. Test Results and Medication Analysis

The project also examines:

- Test-result distribution
- Medication frequency

These variables provide additional descriptive context about the patient records.

## 8. Skills Demonstrated

### SQL

- Data-quality checks
- Duplicate analysis
- Aggregation and GROUP BY analysis
- Filtering
- KPI calculations

### Python

- Pandas
- NumPy
- Data cleaning
- Date handling
- Exploratory Data Analysis
- Matplotlib
- Seaborn
- Descriptive statistics
- Data visualization

### Power BI

- KPI cards
- Interactive dashboard design
- Healthcare metrics
- Visual analysis
- Business-oriented reporting

## 9. End-to-End Workflow

**Raw Healthcare Dataset → SQL Data Validation & Analysis → Python Data Preparation & EDA → Power BI Dashboard → Business Insights**

This demonstrates the ability to work across multiple stages of a data analytics workflow.

## 10. Recruiter-Facing Takeaway

This project demonstrates practical entry-level Data Analyst capabilities:

- Working with a large tabular dataset
- Identifying and handling data-quality issues
- Writing analytical SQL queries
- Performing exploratory analysis with Python
- Creating meaningful visualizations
- Building an interactive Power BI dashboard
- Translating analytical results into business-oriented insights

The project demonstrates the complete process from **raw data to analysis to visualization and communication**.
