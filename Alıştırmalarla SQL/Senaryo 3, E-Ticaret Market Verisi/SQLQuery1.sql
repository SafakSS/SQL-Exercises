--ORDERSALES TABLOSU UZERINDE HANGI SEHIRDE NE KADARLIK
--SATIS YAPILDIGI BILGISINI CEKEN SQL SORGUSUNU YAZINIZ
USE ETRADE
SELECT CITY, SUM(LINETOTAL) AS TOTALSALE
FROM SALEORDERS
GROUP BY CITY
ORDER BY CITY ASC