-- MAGAZALARIN MUSTERI SAYISINI GETIRME
SELECT * FROM SALES

SELECT 
CITY, COUNT(DISTINCT CUSTOMERCODE) AS COSTUMERCOUNT, COUNT(DISTINCT FICHENO) AS FICHENO, COUNT(*) ITEMCOUNT
FROM SALES
GROUP BY CITY
ORDER BY 2 DESC

