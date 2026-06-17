USE hr_data;

# Checking Unique Employee 
SELECT COUNT(DISTINCT EmployeeNumber)
FROM hr_attrition;

# Checking the Duplicates
SELECT EmployeeNumber,COUNT(*) FROM hr_attrition
GROUP BY EmployeeNumber 
HAVING COUNT(*) > 1;

# Check Missing Values
SELECT 
SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) Age_Nulls,
SUM(CASE WHEN Department IS NULL THEN 1 ELSE 0 END) Dept_Nulls,
SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 ELSE 0 END) Income_Nulls,
SUM(CASE WHEN JobRole IS NULL THEN 1 ELSE 0 END) Role_Nulls
FROM hr_attrition;

# Employee Distribution
SELECT COUNT(*) TotalEmployees,
AVG(Age) Avg_Age,
MIN(Age) Youngest,
MAX(Age) Oldest
FROM hr_attrition;

# Gender Distribution 
SELECT Gender,
COUNT(*) TotalEmployees FROM hr_attrition
GROUP BY Gender;

# Department Distribution 
SELECT
Department,
COUNT(*) TotalEmployees
FROM hr_attrition
GROUP BY Department
ORDER BY TotalEmployees DESC;

# Job Role Distribution
SELECT JobRole, COUNT(*) TotalEmployees
FROM hr_attrition 
GROUP BY JobRole
ORDER BY TotalEmployees DESC;








































