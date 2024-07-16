INSERT INTO user(first_name,last_name)
VALUES ('alex','rod');

INSERT INTO user(id) VALUES (1);

INSERT INTO user (first_name)
VALUES ('char'),('david');

SELECT * FROM user;


--UPDATE
UPDATE user
SET balance = 200,last_name = '1'
WHERE first_name = 'alex';

SELECT * from user WHERE first_name = 'alex';


-- balance 열은 모두 0로 바꾼다........ 
UPDATE  user 
SET balance = 0 ;

-- DELETE FROM  user
DELETE  from user
WHERE first_name = 'alex';

SELECT * from user;

-- where 생략하면 모두 삭제됨 
DELETE from user; 

