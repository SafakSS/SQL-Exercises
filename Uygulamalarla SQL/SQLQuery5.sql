-- URUN KATEGORILERINE GORE SATIS RAKAMLARINI GETIRME
SELECT * FROM SALES

SELECT 
CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4, 
SUM(AMOUNT) AS TOTALAMOUNT, COUNT(*) AS ROWCOUNT_, ROUND(SUM(TOTALPRICE),0) AS TOTALPRICE FROM SALES
GROUP BY CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4
ORDER BY CATEGORY1, CATEGORY2, CATEGORY3, CATEGORY4