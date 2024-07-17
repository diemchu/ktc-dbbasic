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
   
