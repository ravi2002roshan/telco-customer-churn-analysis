# 📊 Telco Customer Churn Analysis

Analyzing why telecom customers cancel their subscriptions — and what the business can do about it — using Python, SQL, and interactive dashboards.

---

## 🧩 Business Problem

Customer churn is one of the most expensive problems in subscription-based businesses — acquiring a new customer costs significantly more than retaining an existing one. This project analyzes a telecom company's customer base to identify **who churns, why they churn, and how much revenue is at risk**, with the goal of providing data-driven recommendations to reduce churn.

---

## 📁 Dataset

- **Source:** [Telco Customer Churn — Kaggle](https://www.kaggle.com/datasets/blastchar/telco-customer-churn)
- **Size:** 7,043 customers × 21 features
- **Features:** Customer demographics, account information, subscribed services, contract type, billing details, and churn status

---

## 🛠️ Tools & Tech Stack

| Category | Tools |
|---|---|
| Data Cleaning & EDA | Python (pandas, numpy) |
| Data Visualization | Matplotlib, Seaborn |
| Database | MySQL |
| Python–SQL Integration | SQLAlchemy |
| Business Intelligence | Power BI |

---

## 🔍 Project Workflow

1. **Data Cleaning** — Handled incorrect data types, missing values, and inconsistent categorical labels using pandas
2. **Exploratory Data Analysis (EDA)** — Analyzed churn patterns across contract types, tenure, payment methods, and customer demographics using Seaborn visualizations
3. **SQL Analysis** — Loaded cleaned data into MySQL via SQLAlchemy and wrote business-focused SQL queries to quantify churn drivers and revenue impact
4. **Dashboard** — Built an interactive Power BI dashboard to visualize key churn metrics and enable stakeholder exploration

---

## 📈 Key Insights

- **Overall churn rate is 26.5%** — roughly 1 in 4 customers cancel their service
- **Contract type is the strongest churn driver:** Month-to-month customers churn at **42.7%**, nearly **4x higher** than two-year contract customers at **2.8%**
- **New customers are the highest risk:** Customers with 0–12 months tenure churn at **47.4%**, dropping to just **9.5%** for customers with 49–72 months tenure
- **Fiber optic customers churn more** than DSL customers (41.9% vs. 19.0%), despite fiber typically being a premium service
- **Electronic check users churn the most** among payment methods, at **45.3%** — over 2x higher than automatic payment methods
- **Senior citizens churn at nearly double the rate** of non-senior customers (41.7% vs. 23.6%)
- **$139,131 in monthly recurring revenue** is currently at risk from churned customers

---

## 📊 Visualizations
<img width="690" height="526" alt="churn rate by internet service" src="https://github.com/user-attachments/assets/409feb8c-7016-4197-a98d-f16a36b7090c" />

<img width="690" height="507" alt="churn rate by contact" src="https://github.com/user-attachments/assets/10a14ad4-146a-4462-848a-fef4bb4c24ae" />

<img width="729" height="536" alt="tenure distribution by churn" src="https://github.com/user-attachments/assets/2a288b7a-05f9-4a2f-b761-255715e6754b" />

<img width="729" height="536" alt="monthly charges by churn" src="https://github.com/user-attachments/assets/2475e1dc-f8d7-4e66-8c04-fad890ceb9f0" />

<img width="842" height="629" alt="churn rate by payment method" src="https://github.com/user-attachments/assets/94d7542e-393b-483e-8efb-0debdfe81b75" />

<img width="682" height="609" alt="correlation heatmap" src="https://github.com/user-attachments/assets/14ca5394-afd8-4d7c-b8bf-b2d60af874e2" />


## 🗃️ SQL Analysis

Business questions answered using SQL (full queries in [`sql/churn_business_questions.sql`](sql/churn_business_questions.sql)):

- Overall churn rate and customer counts
- Churn rate segmented by contract type, payment method, and tenure group
- Revenue at risk from churned customers
- High-risk customer segment identification (month-to-month + fiber optic + no tech support)

---

## 💡 Business Recommendations

1. **Incentivize longer contracts** — Offer discounted pricing or loyalty perks for customers to switch from month-to-month to annual contracts, directly targeting the segment with 42.7% churn
2. **Strengthen early-tenure engagement** — Introduce onboarding check-ins or first-90-days retention offers, since churn is highest (47.4%) in a customer's first year
3. **Investigate fiber optic service quality** — Higher churn among fiber optic users despite being a premium service suggests possible pricing or service satisfaction issues worth investigating
4. **Promote automatic payment methods** — Encourage electronic check users to switch to automatic bank transfer or credit card payments, which show significantly lower churn
5. **Prioritize senior citizen retention programs** — Given their nearly 2x higher churn rate, targeted support or simplified service plans could improve retention in this segment

---

## 📂 Repository Structure




---

## ⚙️ How to Run This Project

```bash
# Clone the repository
git clone https://github.com/your-username/telco-customer-churn-analysis.git
cd telco-customer-churn-analysis

# Install dependencies
pip install -r requirements.txt

# Open the notebook
jupyter notebook notebooks/churn_analysis.ipynb
```

---

## 🔗 Connect With Me

- **LinkedIn:** [www.linkedin.com/in/ravi-roshan-710105347]
- **GitHub:** [https://github.com/ravi2002roshan]
- **Email:** [raviroshanbxr@gmail.com]

---

*This project was built as part of my data analyst portfolio to demonstrate skills in data cleaning, exploratory data analysis, SQL, and business intelligence dashboarding.*
