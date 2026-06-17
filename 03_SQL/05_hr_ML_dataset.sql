USE hr_data;

# Final SQL Output Table for ML
CREATE VIEW hr_ml_dataset AS

SELECT

EmployeeNumber,

CASE
WHEN Attrition='Yes' THEN 1
ELSE 0
END AttritionFlag,

Age,

MonthlyIncome,

DistanceFromHome,

JobSatisfaction,

EnvironmentSatisfaction,

WorkLifeBalance,

YearsAtCompany,

YearsInCurrentRole,

YearsSinceLastPromotion,

TotalWorkingYears,

OverTime,

Department,

JobRole,

MaritalStatus,

BusinessTravel

FROM hr_attrition;