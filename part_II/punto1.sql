

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

ALTER TABLE PRODUCTS ADD CONSTRAINT FK_CATEGORY
      FOREIGN KEY (category_id) REFERENCES CATEGORIES (ID);


