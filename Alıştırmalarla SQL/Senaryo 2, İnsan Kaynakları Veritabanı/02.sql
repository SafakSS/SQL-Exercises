--�irketimizde departman bazl� halen �al��maya devam eden KADIN ve ERKEK say�lar�
SELECT DEPARTMENT,
CASE
	WHEN P.GENDER = 'E' THEN 'Erkek'
	WHEN P.GENDER = 'K' THEN 'Kad�n'
END AS GENDER
,COUNT(GENDER) AS PERSONCOUNT FROM PERSON P
INNER JOIN DEPARTMENT D ON D.ID = P.DEPARTMENTID
WHERE OUTDATE IS NULL
GROUP BY DEPARTMENT,GENDER
ORDER BY 1