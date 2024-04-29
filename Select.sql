SELECT M.Module_Code, M.Module_Name
FROM Modules M
LEFT JOIN Assesment_Bookings AB ON M.Module_Code = AB.Module_Code
WHERE AB.Assesment_Date IS NULL;

SELECT M.Module_Code, M.Module_Name, COUNT(AB.Module_Code) AS "Number of Assesments"
FROM Modules M
LEFT JOIN Assesment_Bookings AB ON M.Module_Code = AB.Module_Code
GROUP BY M.Module_Code
ORDER BY COUNT(AB.Module_Code) DESC;

SELECT M.Module_Code, M.Module_Name, AB.Assesment_Date, AB.Duration
FROM Modules M
LEFT JOIN Assesment_Bookings AB ON M.Module_Code = AB.Module_Code
ORDER BY AB.Duration DESC
LIMIT 1;