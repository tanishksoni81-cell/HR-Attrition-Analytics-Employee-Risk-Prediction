# HR Attrition Analytics & Employee Risk Prediction
Project Overview

This project delivers an end-to-end HR analytics solution that combines SQL, Python, Machine Learning, and Business Intelligence to analyze employee attrition patterns and predict resignation risk.

The objective is to help HR teams identify workforce retention challenges, uncover key attrition drivers, and prioritize intervention strategies for employees at risk of leaving.

Business Problem

Employee attrition can significantly impact recruitment costs, productivity, and organizational performance. HR leaders need data-driven insights to understand:

Why employees leave
Which departments face the highest risk
Which employees require retention efforts
What factors contribute most to attrition
Dataset

IBM HR Analytics Employee Attrition Dataset

1,470 employee records
35+ workforce-related attributes
Demographic, compensation, performance, satisfaction, and employment history data
Project Workflow
1. SQL Analytics
Data quality assessment
Workforce profiling
Attrition rate analysis
Department-level analysis
Job role analysis
Overtime impact assessment
Salary and satisfaction analysis
Feature engineering for machine learning
2. Exploratory Data Analysis (Python)
Data validation
Attrition distribution analysis
Correlation analysis
Workforce segmentation
Driver identification
3. Machine Learning

Built classification models to predict employee resignation risk.

Models evaluated:

Logistic Regression
Random Forest
XGBoost

Generated:

Employee risk scores
Risk categories
High-risk employee identification
4. Dashboard & Reporting

Developed an executive-level dashboard featuring:

Attrition KPIs
Department-wise attrition analysis
Risk score distribution
Overtime impact analysis
High-risk employee monitoring
Retention insights
Key Insights
Workforce Risk Indicators
Overtime emerged as one of the strongest attrition indicators.
Employees with lower monthly income demonstrated higher resignation probability.
Lower job satisfaction correlated with increased attrition.
Work-life balance significantly influenced retention outcomes.
Early-tenure employees showed elevated attrition risk compared to long-tenured employees.
Business Impact

This solution enables organizations to:

Identify high-risk employees proactively
Prioritize retention efforts
Improve workforce planning
Reduce recruitment and onboarding costs
Support data-driven HR decision making
Tech Stack
Python
SQL
Pandas
NumPy
Scikit-Learn
XGBoost
Matplotlib
Seaborn
Power BI / Looker Studio
Repository Structure
HR-Attrition-Analytics/

├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_EDA.ipynb
│   ├── 02_Preprocessing.ipynb
│   ├── 03_Modeling.ipynb
│   ├── 04_Model_Explainability.ipynb
│   └── 05_RiskScoring.ipynb
│
├── sql/
│   ├── 01_data_quality.sql
│   ├── 02_data_profiling.sql
│   ├── 03_feature_engineering.sql
│   ├── 04_attrition_analysis.sql
│   ├── 05_advanced_analysis.sql
│   └── 06_ml_dataset.sql
│
├── models/
│   ├── attrition_model.pkl
│   └── label_encoders.pkl
│
└── dashboard/
    └── HR_Attrition_Dashboard
Resume Bullet (1 Line)

Built an end-to-end HR Attrition Analytics solution analyzing 1,470 employee records using SQL, Python, Machine Learning, and BI dashboards to identify key retention drivers and predict employee resignation risk.
