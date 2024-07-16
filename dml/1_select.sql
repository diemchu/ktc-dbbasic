-- 가장 기본적인 select 
SELECT first_name , last_name FROM USER WHERE balance >= 150;

-- 결과를 정렬라자
-- 오름차순
SELECT * FROM user ORDER BY AGE DESC;
-- 내림차순
SELECT * FROM user ORDER BY AGE ,first_name ;

SELECT first_name AS "이름",AGE "나이" FROM USER ORDER BY AGE DESC , first_name DESC;

-- IN , BETTWEEN
SELECT * FROM user WHERE age in (20,21);
SELECT * FROM user WHERE age BETWEEN 20 AND 23;
SELECT * FROM USER WHERE age in (22,24) ORDER BY AGE;


-- 중복 제거
SELECT DISTINCT age   AS "개수" FROM USER;
SELECT DISTINCT last_name ,AGE FROM USER;
SELECT DISTINCT country FROM user ORDER BY country;


--나이가 30미만인 사용자 FRISTNAME 조희 
SELECT first_name , age FROM user WHERE age < 30;


SELECT balance , age ,country
FROM user
WHERE age >= 40 and balance >= '150' and country = "United States"
ORDER by age;

SELECT first_name , balance 
FROM user 
where country = "United States"
ORDER BY balance DESC LIMIT 2;



--정규식
SELECT first_name FROM user WHERE first_name LIKE "%a%";
-- a포함 된 frist_name 가진 사람만 뽑는다 
SELECT first_name FROM user WHERE  first_name LIKE "_a%";
--두번쩨 글자 a인  사람만 뽑는다 

--%: 0개 이상의 문자열와 일치
SELECT * FROM USER WHERE email LIKE "%naver.com";
SELECT * FROM USER WHERE email LIKE "%@_____.com";

-- A로 시작하는 사용자
SELECT * FROM USER WHERE first_name LIKE 'A%';
-- A로 시작하면서 4근자인 사용자
SELECT DISTINCT first_name FROM USER WHERE first_name LIKE 'A____';


-- 010로 시작하는 않는 사람 
SELECT DISTINCT first_name , phone  FROM USER WHERE NOT phone  LIKE '010-%';

-- in 
SELECT first_name , country  , balance from user 
WHERE country 
in ('United States','Canada','Australia')
ORDER BY country ,  balance DESC;


-- limit & offset
SELECT * FROM user LIMIT 10;  
SELECT * FROM user LIMIT 10 OFFSET 50;


SELECT * from user where first_name LIKE 'alex';


SELECT * FROM user;