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