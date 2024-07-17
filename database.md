## 관계형 데이터 베이스

- 데이터를 관계 (Relation)으로 표현한 데이터베이스

## 관계형 데이터 베이스 특정
- 데이터를 테이블 , 행,열 등으로 나눠서 구조화해서 체계적으로 관리
- 자료를 여러 테이블에 나워서 관리하고, 테이블들 간에 관계를 설정
- 데이터 무결성 유지에 장점
- SQL을 이용해 데이터를 조회하고 조작

<span style="color: yellow;">스키마</span>
-  관계형 데이터 베이스가 가진 데이터의 구조를 표현한 것
-  기본적인 데이터베이스 자료의 구조와 표현 방법

## 관계형 데티어베이스
- 필드와 레코드를 사용해 조직된 데이터들의 집합
-  필드: 속성 또는 칼럼
-  레코드: 튜플 또는 행
  
### <span style="color: yellow;">Primary Key(PK)</span>
- 기본키라고 부르며 , 각 레코드의 고유한 값
- 기술적으로 다른 항목과 중복 불가
-  DB 관리와 테이블 간 관계 설정 시 중요하게 활용
-  
### <span style="color: yellow;">Foreign Key(FK)</span>
- 한 테이블의 데이터를 표현할 떄 다른 테이블의 데이터가 필요한 경우 해당 테이블의 pk를 테이블에 저장해서 사용한다.
  
## SQL: Structured Query Language
**관계형 데이터 베이스에서 데이터를 관리하기 위해 사용하는 언어**
1. DDl- Data Definition Language,데이터의 모습을 정의하기 위한 명령
2. DML- Data Manipulation Language, 데이터 조작을 위한 명령
3. DCL- Data Control Language, 데이터 접근 권한 관련 

## 데이터  무결성과 Constraints
1. NOT NULL
2. UNIQUE: 해당 컬럼의 값은 고유해야 한다.
3. PRIMARY KEY
4. AUTOINCREMENT 


### JOIN 예제

``` drop tables if exists employees;
CREATE TABLE  IF NOT exists employees(
	id integer primary key,
    name text,
    department_id integer,
    foreign key (department_id) references departments(id)
);

insert into employees values (1,'John',1);
insert into employees values (2,'Jane',2);
insert into employees values (3,'Alice',null);
insert into employees values (4,'Bod',2);

select * from employees;

create table if not exists  departments(
	id integer primary key,
    name text
);

insert into departments values(1,'HR');
insert into departments values(2,'Engineering');
insert into departments values(3,'Marketing');
select * from departments;


 -- 1.  inner join : INNER JOIN trả về các hàng khi có ít nhất một cặp giá trị khớp nhau trong các bảng được kết hợp
 select * from employees e , departments depa where e.department_id = depa.id;  
 select  e.name from employees e inner join departments depa on e.department_id = depa.id;  
-- 2. LEFT JOIN (hoặc LEFT OUTER JOIN) : EFT JOIN trả về tất cả các hàng từ bảng bên trái và các hàng khớp từ bảng bên phải
select  e.name , d.name  from  employees e left  join departments d on  e.department_id = d.id ;
-- 3. RIGHT JOIN (hoặc RIGHT OUTER JOIN): RIGHT JOIN trả về tất cả các hàng từ bảng bên phải và các hàng khớp từ bảng bên trái.
select * from employees right outer join departments on employees.department_id = departments.id;
-- 4. FULL JOIN (hoặc FULL OUTER JOIN): FULL JOIN trả về tất cả các hàng khi có một khớp trong bất kỳ bảng nào. Điều này có nghĩa là nó sẽ trả về tất cả các hàng từ cả hai bảng và điền NULL cho các cột không khớp.
SELECT e.name, d.name as department
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id
UNION
SELECT e.name, d.name as department
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.id;
-- 5.  CROSS JOIN trả về tích Cartesian của hai bảng. Điều này có nghĩa là mỗi hàng trong bảng thứ nhất sẽ được kết hợp với mỗi hàng trong bảng thứ hai.  
select * from employees cross join departments;
-- 6. SELF JOIN SELF JOIN là một phép JOIN bảng với chính nó. Nó có thể được sử dụng để tìm các mối quan hệ trong cùng một bảng. 
```
## JDBC: JAVA DATABASE CONNECTIVITY
## Statement vs PreparedStatement
1. Statement 사용할 경우 
   
   - sử dụng cho các câu lệnh SQL đơn giản, không có tham số hoặc chỉ được thực thi một lần.
   - Không có tham số: Khi câu lệnh SQL không có tham số hoặc giá trị thay đổi động
   - Không lo ngại về hiệu suất hoặc bảo mật: không lo ngại về vấn đề hiệu suất hoặc tấn công SQL Injection, Statement có thể được sử dụng.
   - **ex**: ``` stmt.executeQuery("SELECT * FROM users");```
2. PreparedStatment 사용할 경우
   - Câu lệnh có tham số
   - iúp bảo vệ chống lại các tấn công SQL Injection vì các tham số được gán vào câu lệnh SQL một cách an toàn.
   - Hiệu suất: PreparedStatement có thể cải thiện hiệu suất khi thực thi nhiều lần cùng một câu lệnh SQL với các giá trị tham số khác nhau.
   - Đọc dữ liệu nhị phân: PreparedStatement hỗ trợ đọc dữ liệu nhị phân như các file ảnh hoặc các dữ liệu BLOB.
   - **ex**: ``` stmt.executeQuery("SELECT * FROM users where id = ?");```
 