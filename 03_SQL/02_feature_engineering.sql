# Attrition Flag
SELECT *, CASE WHEN Attrition= 'Yes' THEN 1
ELSE 0 
END AS AttritionFlag
FROM hr_attrition;

# Age Group 
SELECT *, 
CASE
WHEN Age < 30 THEN '20-30'
WHEN Age < 30 THEN '30-39'
WHEN Age < 30 THEN '40-49'
ELSE '50+'
END AS AgeGroup
FROM hr_attrition;

# Salary Band
SELECT *,
CASE
WHEN MonthlyIncome < 4000 THEN 'Low'
WHEN MonthlyIncome < 8000 THEN 'Medium'
ELSE 'High'
END AS SalaryBand
FROM hr_attrition;

# Experience Band
SELECT *,
CASE
WHEN TotalWorkingYears <= 5 THEN '0-5 Years'
WHEN TotalWorkingYears <= 10 THEN '6-10 Years'
WHEN TotalWorkingYears <= 20 THEN '11-20 Years'
ELSE '20+ Years'
END AS ExperienceBand
FROM hr_attrition;


