# customer-churn-retention-analysis
Customer churn analysis and retention dashboard for a telecom business
# Customer Churn Analysis & Retention Intelligence Dashboard

## Business Problem
This telecom company is losing **26.5% of its customers** — nearly 1 in 4 — 
representing an estimated **$1,669,570 in annual recurring revenue at risk**. 
This project identifies which customer segments drive churn and quantifies 
the financial impact, providing a data-driven foundation for retention strategy.

## Key Findings

- **Contract type is the strongest churn driver.** Month-to-month customers 
  churn at **42.7%**, compared to just **2.8%** for two-year contract holders 
  — a 15x difference.
- **Payment method correlates strongly with churn.** Customers paying via 
  Electronic Check churn at **45.3%**, more than double every other payment 
  method (15–19%).
- **Churners leave early.** Customers who churn have an average tenure of 
  **18 months**, compared to **37.6 months** for retained customers.
- **Churners pay more, not less.** Average monthly charges for churned 
  customers ($74.44) exceed those who stayed ($61.27) — suggesting price 
  sensitivity or perceived value issues rather than simple affordability.

## Dashboard

![Churn Dashboard](images/dashboard_screenshot.png)

## Tools & Methods

| Tool | Purpose |
|---|---|
| **Python (pandas)** | Data cleaning, exploratory analysis, dtype correction |
| **SQL (SQLite)** | Business-question queries, revenue impact calculations |
| **Power BI (DAX)** | Interactive dashboard with live-recalculating measures |

## Data Cleaning Notes

- `TotalCharges` was stored as text due to 11 blank values (new customers 
  with 0 months tenure). Converted to numeric and filled with 0, preserving 
  the full 7,043-customer dataset.
- No other data quality issues found across 18 categorical columns 
  (verified via `.unique()` inspection).

## Project Structure
data/           Raw and cleaned datasets
notebooks/      Python analysis scripts
sql/            SQLite database and finalized queries
powerbi/        Power BI dashboard file (.pbix)
images/         Dashboard screenshots

## Dataset
[IBM Telco Customer Churn](https://www.kaggle.com/datasets/blastchar/telco-customer-churn) 
(Kaggle) — 7,043 customers, 21 features.