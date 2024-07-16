-- 제 1 정규화
-- 하나의 컬럼이 복수의 데이터를 가지고 있지않다
-- 별도의 데이블에서 관리하기 시작하면 제 1 정규형 데이블 두개
CREATE TABLE product(
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   product_name VARCHAR(50) NOT NULL  ,
   product_description VARCHAR(50) DEFAULT NULL,
   manufacture_id INTEGER,
   FOREIGN KEY (manufacture_id) REFERENCES manufacture(id)
);

drop TABLE product;

CREATE TABLE manufacture (
   id INTEGER PRIMARY KEY AUTOINCREMENT, 
   manufacture VARCHAR(50),
   manufacture_nationality VARCHAR(50)
);

INSERT INTO manufacture(manufacture,manufacture_nationality)
VALUES ('M사','미국');
INSERT INTO manufacture(manufacture,manufacture_nationality)
VALUES ('A사','스위스');
INSERT INTO manufacture(manufacture,manufacture_nationality)
VALUES ('L사','대한민국');

INSERT INTO manufacture(manufacture,manufacture_nationality)
VALUES ('B사','베트남');
SELECT * FROM manufacture;

INSERT INTO  product (product_name,manufacture_id)
VALUES ('mouse_A',1);

INSERT INTO  product (product_name,product_description,manufacture_id)
VALUES ('해드셋_B','가성비 좋은 헤드셋',2);

INSERT INTO  product (product_name,product_description,manufacture_id)
VALUES ('키보드_C','키감 좋은 기계식 키보드',3);
INSERT INTO  product (product_name,product_description,manufacture_id)
VALUES ('해드셋_D','가성비 떨어지지만 왠지 인기 있는 헤드셋',1);

SELECT m.manufacture FROM product as p , manufacture m
WHERE m.id = p.manufacture_id;


-- rdb에서의 관계
-- + 1:1 one to one관계: 
   -- 한 테이블의 레코드 하나가 다른 테이블의 레코드 히나와 연관된  관계
   -- 특정 테이터를 성능 또는 보안적 측면에서 나눌 때 사용
-- + n:1 many to one 관계
   -- 한 테이블의 레코드 0개 이상이 다른 테이블의 레코드 하나와 연관된 관계
   -- 일반적인 데이터베이스의 가장 흔한 관계(게시글,댓글,가게,상품)
-- + m:n : many to many 관계
   -- 한 테이블의 레코드 0개 이상 다른 테이블의 레코드 0개 이상 연관된 관계
   -- 양쪽 테이블의 pk를 foreign key로 가진 join table, associative table


-- cross join : 단순하게 from 절에 테이블 두개 합친다
-- 연관관계와 상관없이 양쪽 테이블의 레코드를 각각
-- 짝지은 결과 (교집합) 
SELECT * FROM  product , manufacture;


-- inner join : 양쪽 테이블 모두 존재하는 데이터에 대해
-- on절 조건을 기준으로 join
-- INNER 생략 가능
SELECT * FROM product INNER JOIN manufacture
ON product.manufacture_id = manufacture.id;


-- 삭제, 누락된 데이터를 함께 보고 싶다면 OUTER JOIN 활용
SELECT * FROM 
product AS p 
LEFT OUTER JOIN  manufacture as m 
ON  m.id = p.manufacture_id;



-- 곱집합을 만드는 용도
SELECT * 
FROM LECTURE , INSTRUCTOR;

-- inner join 
SELECT * 
FROM lecture INNER JOIN  instructor
-- ON 통해 모을 기준을 정한다
ON lecture.id =  instructor.id;

SELECT name,day,first_name,last_name
FROM lecture l JOIN instructor  i
ON L.instructor_id = I.id
ORDER BY i.id;


-- 학생와 지도교수 데이터를 다 보고싶다
SELECT * 
FROM student INNER JOIN instructor
ON student.advisor_id = instructor.id 
ORDER BY student.id;


-- OUTER JOIN
--OUTER JOIN trả về các hàng từ một hoặc cả hai bảng,

 ngay cả khi không có dòng nào khớp với điều kiện kết nối.
SELECT lecture.id, name, day,first_name,last_name
FROM lecture LEFT OUTER JOIN instructor 
ON instructor.id = lecture.instructor_id;


SELECT  * 
FROM student LEFT OUTER JOIN instructor
ON student.advisor_id = instructor.id;


--INNER JOIN -> JOIN 
SELECT * 
FROM student  JOIN instructor 
ON student.advisor_id = instructor.id;

--LEFT OUTER JOIN -> LEFT JOIN
SELECT * 
FROM student  LEFT JOIN  instructor
ON student.advisor_id = instructor.id;


CREATE TABLE Products(
   product_id INTEGER PRIMARY KEY,
   low_fats ENUM('Y','N'),
   recyclable ENUM('Y','N')
);