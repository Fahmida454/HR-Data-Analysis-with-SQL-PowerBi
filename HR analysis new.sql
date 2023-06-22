SELECT * FROM [dbo].['Human%20Resources$']

/* GENDER COUNT ACROSS DEPARTMENT */

SELECT department, gender, COUNT(gender) AS Total
FROM [dbo].['Human%20Resources$']
GROUP BY gender, department
ORDER BY department

/* FEMALE GENDER COUNT ACROSS DEPARTMENT */

SELECT department, COUNT(gender) AS FemaleEmployee
FROM [dbo].['Human%20Resources$']
WHERE gender = 'Female'
GROUP BY department
ORDER BY FemaleEmployee DESC

/* EMPLOYEE LOCATION */

SELECT location_state , COUNT(location_state) AS EmployeeCount
FROM [dbo].['Human%20Resources$']
GROUP BY location_state
ORDER BY EmployeeCount DESC

/* RACE COUNT */

SELECT race , COUNT(race) AS RaceCount
FROM [dbo].['Human%20Resources$']
GROUP BY race
ORDER BY RaceCount DESC
