

create table  CATEGORIES
(
  id int primary key,
  name varchar2(255),
  season  varchar2(255)
);

create table PRODUCTS
(
  id int primary key,
  name varchar2(255),
  reference  varchar2(255),
  price decimal(10,3),
  category_id int
);

create table ANSWERS
(
  id int primary key,
  number_of_question  varchar2(255),
  answer varchar2(255)
);

alter table CATEGORIES
    add  constraint ckSeasonTable check (season in ('winter', 'summer', 'spring', 'autumn'));
    
 alter table PRODUCTS
    add  constraint ckPriceTable check (price > 0);

     
ALTER TABLE PRODUCTS ADD CONSTRAINT FK_CATEGORY
      FOREIGN KEY (category_id) REFERENCES CATEGORIES (ID);
      

SELECT COUNT(REFERENCE) FROM PRODUCTS where CATEGORY_ID in 
(select id from CATEGORIES where CATEGORIES.NAME = 'shoes' and CATEGORIES.SEASON = 'summer');

SELECT PRICE FROM PRODUCTS WHERE CATEGORY_ID in 
(select id from CATEGORIES where CATEGORIES.NAME = 'golf') order by price desc;

SELECT PRICE FROM PRODUCTS WHERE CATEGORY_ID in 
(select id from CATEGORIES where CATEGORIES.NAME = 'ski') order by price asc;

SELECT name FROM PRODUCTS WHERE reference = '0E290CDE-FD74-1BA6-D84D-7F1E9AD5BF05';

select c.name from CATEGORIES c inner join PRODUCTS p on c.id = p.CATEGORY_ID where p.NAME = 'Nulla eget';

/*Accesories Sequences*/
CREATE SEQUENCE ANSWERS_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE
NOCYCLE;



insert into ANSWERS (id, NUMBER_OF_QUESTION, ANSWER ) VALUES(1, 'QUESTION1', 26); 
insert into ANSWERS (id, NUMBER_OF_QUESTION, ANSWER ) VALUES(2, 'QUESTION2',963 ); 
insert into ANSWERS (id, NUMBER_OF_QUESTION, ANSWER ) VALUES(3, 'QUESTION3', 10); 
insert into ANSWERS (id, NUMBER_OF_QUESTION, ANSWER ) VALUES(4, 'QUESTION4', 'vel sapien');
insert into ANSWERS (id, NUMBER_OF_QUESTION, ANSWER ) VALUES(5, 'QUESTION5', 'swim wear');
    
   
create tablespace HACEB datafile 'haceb.dbf' size 100m
autoextend on maxsize 100m
extent management local
segment space management auto
online;

CREATE PROFILE ventas LIMIT
SESSIONS_PER_USER 1
IDLE_TIME 18
FAILED_LOGIN_ATTEMPTS 3;

CREATE USER amartinez 
IDENTIFIED BY amartinez123
DEFAULT TABLESPACE HACEB 
QUOTA UNLIMITED  ON HACEB
profile ventas;

GRANT DBA TO amartinez;
GRANT CONNECT TO amartinez;

select * from products;
select * from categories;
select * from answers;