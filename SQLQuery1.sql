SELECT * 
FROM HR.Employees;

SELECT firstname, lastname
FROM HR.Employees;

SELECT DISTINCT firstname
FROM HR.Employees;

SELECT title, COUNT(*) AS [jumlah]
FROM  HR.Employees
WHERE title='Sales Manager'
GROUP BY title;

SELECT firstname, lastname
FROM HR.Employees 
ORDER BY firstname ASC;

SELECT TOP (3) firstname
FROM HR.Employees;

SELECT birthdate 
FROM  HR.Employees
WHERE birthdate 
BETWEEN '1958-12-08' AND '1973-08-30';

SELECT firstname, hiredate
FROM HR.Employees 
WHERE birthdate IN ('1958-12-08', '1965-03-04', '1973-08-30');

SELECT firstname 
FROM HR.Employees 
WHERE firstname LIKE '%R%'; 

SELECT firstname, lastname 
FROM HR.Employees 
WHERE firstname 
LIKE 'S%' 
AND titleofcourtesy IN ('Ms.', 'Mr.');
