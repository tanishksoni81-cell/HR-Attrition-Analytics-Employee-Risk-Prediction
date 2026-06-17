USE hr_data;

# Top Risk Segment
SELECT
Department,
OverTime,
COUNT(*) Employees,
SUM(
CASE
WHEN Attrition='Yes'
THEN 1
ELSE 0
END
) Attritions
FROM hr_attrition
GROUP BY
Department,OverTime
ORDER BY Attritions DESC;

# Yound Employees Leaving 
SELECT
AgeGroup,
COUNT(*) Employees,
SUM(
CASE
WHEN Attrition='Yes'
THEN 1
ELSE 0
END
) Attritions
FROM
(
SELECT *,
CASE
WHEN Age < 30 THEN '20-29'
WHEN Age < 40 THEN '30-39'
WHEN Age < 50 THEN '40-49'
ELSE '50+'
END AgeGroup
FROM hr_attrition
) x
GROUP BY AgeGroup;

# Top 10 Highest Attrition Risk Groups
SELECT
Department,
JobRole,
OverTime,
COUNT(*) Employees,
SUM(
CASE
WHEN Attrition='Yes'
THEN 1
ELSE 0
END
) Attritions
FROM hr_attrition
GROUP BY
Department,
JobRole,
OverTime
HAVING COUNT(*) > 5
ORDER BY Attritions DESC
LIMIT 10;