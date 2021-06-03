--FILM GENEL BILGI
SELECT 
TITLE,YEAR(RELEASE_DATE) AS YEAR_,
CONVERT(VARCHAR,RUNTIME/60)+'h '+CONVERT(VARCHAR,RUNTIME%60)+'m' DURATION,
VOTE_AVERAGE*10,TAGLINE,OVERVIEW
FROM MOVIE
WHERE TITLE LIKE 'Gladiator' AND FILMID=98

--YONETMEN VE SENARISTLER
SELECT M.TITLE,P.NAME_,D.DEPARTMENT,J.JOB FROM CREW_CREDIT CC
INNER JOIN MOVIE M ON M.FILMID=CC.FILMID
INNER JOIN PERSON P ON P.PERSONID=CC.PERSONID
INNER JOIN DEPARTMENT D ON D.ID=CC.DEPARTMENTID
INNER JOIN JOB J ON J.ID=CC.JOBID
WHERE M.FILMID=98 AND J.JOB IN ('Director','Screenplay')

--OYUNCULAR
SELECT M.TITLE,P.NAME_,P.PROFILE_PATH,CC.CHARACTER_,CC.ORDER_ FROM CAST_CREDIT CC
INNER JOIN MOVIE M ON M.FILMID=CC.FILMID
INNER JOIN PERSON P ON P.PERSONID=CC.PERSONID
WHERE M.FILMID=98
ORDER BY ORDER_

--ANAHTAR KELIMELER, ETIKETLER
SELECT M.TITLE,MK.KEYWORD FROM MOVIE_KEYWORD MK
INNER JOIN MOVIE M ON M.FILMID=MK.FILMID
WHERE MK.FILMID=98

--ONE CIKAN YORUMLAR
SELECT M.TITLE,MR.* FROM MOVIE_REVIEW MR
INNER JOIN MOVIE M ON M.FILMID=MR.FILMID
WHERE M.FILMID=98
