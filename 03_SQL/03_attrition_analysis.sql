# Overall Attrition
SELECT ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/
COUNT(*),2) AS AttritionRate
FROM hr_attrition;

# Attrition by Department
SELECT Department, COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) Attritions,
ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/
COUNT(*),2) AS AttritionRate
FROM hr_attrition
GROUP BY Department
ORDER BY AttritionRate DESC;

# Attrition by Job Role
SELECT JobRole, COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) Attritions,
ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/
COUNT(*),2) AS AttritionRate
FROM hr_attrition
GROUP BY JobRole
ORDER BY AttritionRate DESC;

# Attrition By Gender 
SELECT Gender, COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) Attritions,
ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/
COUNT(*),2) AS AttritionRate
FROM hr_attrition
GROUP BY Gender
;  

# Overtime Analysis
SELECT
OverTime,

COUNT(*) Employees,

SUM(
CASE
WHEN Attrition='Yes'
THEN 1
ELSE 0
END
) Attritions,

ROUND(
100.0 *
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)
/
COUNT(*),
2
) AttritionRate

FROM hr_attrition
GROUP BY OverTime;

# Average Salary Comparision
SELECT Attrition,
AVG(MonthlyIncome) AvgSalary
FROM hr_attrition
GROUP BY Attrition;

# Satisfaction Analysis
SELECT JobSatisfaction, COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) Attritions,
ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/
COUNT(*),2) AS AttritionRate
FROM hr_attrition
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

# Work Life Balance
SELECT WorkLifeBalance, COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) Attritions,
ROUND(100.0 * SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/
COUNT(*),2) AS AttritionRate
FROM hr_attrition
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

# Enviorment Satisfaction 
SELECT EnvironmentSatisfaction, COUNT(*) Employees,
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) Attritions
FROM hr_attrition
GROUP BY EnvironmentSatisfaction;