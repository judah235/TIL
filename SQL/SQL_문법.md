# TIL

### 1. 분류
<br>

* 데이터 정의어(DDL) : 테이블이나 관계의 구조를 생성하는데 사용
* 데이터 조작어(DML) : 테이블에 데이터를 검색, 삽입, 수정, 삭제하는 데 사용
  * 쿼리(query) : 조작어 중, SELECT문을 질의문(쿼리)이라고 부른다. 
* 데이터 제어어(DCL) : 데이터의 사용 권한을 관리하는 데 사용한다.

<br>

 (1) 데이터 정의어(DDL)

* CREATE : ``CREATE DATABASE(TABLE) DB이름(테이블이름)``
  * DB를 생성하거나 테이블을 구성한다
* ALTER : ``ALTER TABLE 테이블이름``
  * 테이블의 제약 조건이나 속성을 수정한다
* DROP :``DROP TABLE 테이블이름``
  * 테이블을 삭제한다

<br>

 (2) 데이터 조작어(DML)

 * SELECT : ``SELECT * FROM 테이블 명`` 
   * 해당 테이블의 모든 필드 선택
 * INSERT : ``INSERT INTO 테이블이름(필드명) VALUES(값)``
   * ROW 추가
 * UPDATE : ``UPDATA 테이블이름 SET 필드이름=VALUE``
   * 해당 테이블의 필드 값을 변경
 * DELETE : ``DELETE FROM 테이블 이름``
   * 테이블의 데이터를 삭제한다