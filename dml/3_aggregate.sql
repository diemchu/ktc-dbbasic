SELECT  country,count(*) as c
from user 
GROUP by country
ORDER by  c DESC;


SELECT age/10 *10 as a , avg(balance) av
FROM user
GROUP by a
ORDER BY av desc;


SELECT balance/10  , avg(age),count(*)
FROM user
GROUP by balance/10
ORDER by  balance/10;


-- 국적별로 사용자의 balance 평균을 조사해주세요
-- 1. 국적의 종류를 찾아야 한다
SELECT  DISTINCT country ,ROUND(AVG(balance) ,2) a
FROM user
GROUP BY country ORDER BY a DESC;



SELECT country,avg(age) a_avg
   FROM user
   GROUP by country
   HAVING a_avg >=45;
