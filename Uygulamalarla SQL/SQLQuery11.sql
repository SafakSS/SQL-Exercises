-- ODEME TURUNE GORE DAGILIM
SELECT 
P.PAYMENTTYPE, 
CASE 
	WHEN PAYMENTTYPE = 1 THEN 'KREDI KARTI'
	WHEN PAYMENTTYPE = 2 THEN 'BANKA HAVALESI'
END AS ODEMETURU_ACIKLAMA,
ROUND(SUM(O.TOTALPRICE),0) AS TOTALPRICE
FROM ORDERS O
INNER JOIN ADDRESS A ON A.ID = O.ADDRESSID
INNER JOIN CITIES C ON C.ID = A.CITYID
INNER JOIN COUNTRIES CT ON CT.ID = A.COUNTRYID
INNER JOIN INVOICES I ON I.ORDERID = O.ID
INNER JOIN TOWNS T ON T.ID = A.TOWNID
INNER JOIN DISTRICTS D ON D.ID = A.DISTRICTID
INNER JOIN PAYMENTS P ON P.ORDERID = O.ID
INNER JOIN USERS U ON U.ID = O.USERID
INNER JOIN ORDERDETAILS OD ON OD.ORDERID = O.ID
INNER JOIN ITEMS ITM ON ITM.ID = OD.ITEMID

GROUP BY P.PAYMENTTYPE
ORDER BY 1