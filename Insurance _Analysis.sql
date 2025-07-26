SELECT *
FROM db.medical_insurance;


select gender, round(Avg(expenses),2) AS Average_Exp,
Round(Avg(premium),2) AS average_Premium
from db.medical_insurance
group by Gender;

SELECT 
  CASE 
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    WHEN age BETWEEN 36 AND 45 THEN '36-45'
    ELSE '46+' END AS age_group,
  Round(Avg(premium),2) AS average_Premium, round(Avg(expenses),2) Average_Exp
FROM db.medical_insurance
GROUP BY age_group
Order by age_group;


SELECT region, round(Avg(expenses),2) AS avg_expenses, Round(Avg(premium),2) AS avg_premium
FROM db.medical_insurance
GROUP BY region;


select bmi, round(Avg(expenses),2) AS avg_expenses, Round(Avg(premium),2) AS avg_premium
from db.medical_insurance
group by bmi;


select children, round(Avg(expenses),2) AS avg_expenses, Round(Avg(premium),2) AS avg_premium
from db.medical_insurance
group by children;

select Count(*),discount_eligibility, round(Avg(expenses),2) AS avg_expenses, Round(Avg(premium),2) AS avg_premium
from db.medical_insurance
group by discount_eligibility;

sELECT *
FROM  db.medical_insurance
ORDER BY expenses dESC
LIMIT 10;

sELECT *, ROUND(PREMIUM - eXPENSES, 2) as pROFIT_OR_loSS
fROM db.medical_insurance
ORDER BY pROFIT_OR_loSS ;


SELECT 
  region,
  ROUND(AVG(premium * 12 - expenses), 2) AS avg_profit_or_loss
FROM db.medical_insurance
GROUP BY region
ORDER BY avg_profit_or_loss DESC;


SELECT 
  CASE 
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
    WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
    ELSE 'Obese' 
  END AS bmi_category,
  ROUND(AVG(premium * 12 - expenses), 2) AS avg_profit_or_loss
FROM db.medical_insurance
GROUP BY bmi_category
ORDER BY avg_profit_or_loss DESC;

SELECT *,
CASE 
WHEN BMI >= 30 AND AGE >= 40 THEN 'HIGH_RISK_FLAG'
ELSE 'GOOD' 
END 
 as RISK_FLAG
FROM db.medical_insurance ;













