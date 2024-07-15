--ddl
-- data definition language
-- 테이블 형태를 정의하고 , 삭제하는 sql
 
-- 테이블 만들기 (CREATE TABLE)
CREATE TABLE users(
   id INTEGER,
   username VARCHAR(64),
   first_nane VARCHAR(32),
   last_name VARCHAR(32),
   email VARCHAR(128)
);

CREATE TABLE menu(
   id INTEGER,
   name TEXT,
   description TEXT,
   price INTEGER
);


-- table Contraints
CREATE TABLE users_not_null(
   id INTEGER,
   username VARCHAR(64),
   first_nane VARCHAR(32),
   last_name VARCHAR(32),
   email VARCHAR(128) NOT NULL
);


-- Ràng buộc rằng giá trị trong cột này phải là duy nhất trong toàn bộ bảng.
--  Không được phép có hai dòng nào trong bảng có cùng một 
-- giá trị trong cột "username".

CREATE TABLE users_unique(
   id INTEGER,
   username VARCHAR(64) UNIQUE,
   first_nane VARCHAR(32),
   last_name VARCHAR(32),
   email VARCHAR(128)
);

-- PK 1부터 순서대로 놓어준다 
CREATE TABLE users_pk(
   id INTEGER PRIMARY KEY AUTOINCREMENT ,
   username VARCHAR(64) UNIQUE,
   first_nane VARCHAR(32),
   last_name VARCHAR(32),
   email VARCHAR(128)
);


-- alter table (table update) 
--  rename to (table name change)
ALTER TABLE users RENAME TO users_backup ;
ALTER TABLE users_backup RENAME TO users;


-- rename column 
ALTER TABLE users RENAME COLUMN first_nane to given_name; 

-- add column 
ALTER TABLE users ADD COLUMN address VARCHAR(256);

-- khi gia tri them vao la null thi gia tri default adfs 
ALTER TABLE users ADD COLUMN phone VARCHAR(128) 
NOT NULL DEFAULT "adfs";

-- DROP COLUMN (sqlite 미지원) 
ALTER TABLE users DROP COLUMN phone;

-- DROP TABLE
DROP TABLED users IF EXISTS;

