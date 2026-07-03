- ============================================
-- Customer Churn Analysis - SQL Queries
-- Dataset: IBM Telco Customer Churn
-- ============================================

-- Query 1: Churn rate by contract type
-- Business question: Does contract length affect customer retention?
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY Contract
ORDER BY churn_rate_pct DESC;

-- Query 2: Churn rate by payment method
-- Business question: Does how a customer pays affect churn?
SELECT 
    PaymentMethod, 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY PaymentMethod
ORDER BY churn_rate_pct DESC;
-- Query 3: Total monthly revenue lost due to churn
-- Business question: What is churn actually costing this company?
SELECT
    COUNT(*) AS churned_customers,
    ROUND(SUM(MonthlyCharges), 2) AS monthly_revenue_lost,
    ROUND(SUM(MonthlyCharges) * 12, 2) AS estimated_annual_revenue_lost
FROM customers
WHERE Churn = 'Yes';