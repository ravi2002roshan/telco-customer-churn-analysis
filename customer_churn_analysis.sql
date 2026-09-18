use Teleco_Churn;
show tables;
select * from Customers;

/*
Q1: Overall Churn Rate

Explanation:
We calculate the percentage of customers 
who churned out of the total customer base — this is the 
single most important KPI for the whole project.
*/
SELECT 
    Churn,
    COUNT(*) AS customer_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customers), 2) AS percentage
FROM customers
GROUP BY Churn;

/*
Q2: Churn Rate by Contract Type

Explanation:
We check which contract type (Month-to-month, One year, Two year) 
has the highest 
churn rate — likely your strongest business insight.
*/
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY Contract
ORDER BY churn_rate_pct DESC;

/*
Q3: Revenue at Risk from Churned Customers

Explanation:
We calculate the total monthly revenue currently 
being lost due to churned customers — this translates your analysis directly into a dollar impact, 
which is the strongest line for your resume/report.
*/
SELECT 
    ROUND(SUM(MonthlyCharges), 2) AS total_monthly_revenue_lost,
    COUNT(*) AS churned_customers
FROM customers
WHERE Churn = 'Yes';

/*
Q4: Churn Rate by Payment Method

Explanation:
We identify which payment method is associated with 
the highest churn, useful for recommending 
payment-related retention offers.
*/
SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY PaymentMethod
ORDER BY churn_rate_pct DESC;

/*
Q5: Average Tenure and Charges for Churned vs Retained Customers

Explanation:
We compare average tenure and monthly 
charges between churned and retained 
customers to understand behavioral differences.
*/
SELECT 
    Churn,
    ROUND(AVG(tenure), 2) AS avg_tenure,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges
FROM customers
GROUP BY Churn;

/*
Q6: High-Risk Segment — Month-to-Month + Fiber Optic + No Tech Support

Explanation:
We combine three high-risk factors identified 
in your EDA (month-to-month contract, fiber optic internet, no tech support) to find the specific customer segment with the highest churn concentration — this is the kind of layered insight that impresses recruiters, 
since it goes beyond single-variable analysis.
*/
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM customers
WHERE Contract = 'Month-to-month'
  AND InternetService = 'Fiber optic'
  AND TechSupport = 'No';
  
  /*
  Q7: Churn Rate by Tenure Group

Explanation:
We bucket customers into tenure ranges directly in SQL using CASE WHEN, 
to confirm whether newer customers churn more than long-term ones — same insight as your Python analysis, 
but proving you can do it in SQL too.
*/
SELECT 
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM Customers
GROUP BY tenure_group
ORDER BY tenure_group;

