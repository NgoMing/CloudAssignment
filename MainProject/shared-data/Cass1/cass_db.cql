CREATE KEYSPACE cass_db
WITH REPLICATION = {
'class' : 'NetworkTopologyStrategy',
'datacenter1' : 3
};

use cass_db;

CREATE TABLE sales_join_price (
	student_name text,
	course_name text,
	date timestamp,
	rate int,
	price decimal,
	PRIMARY KEY (student_name,course_name)
);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jon Yang','Java Programming','2018-01-01',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jon Yang','C Programming','2018-03-15',4,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jon Yang','Python Programming','2018-06-23',5,79.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Eugene Huang','Perl Programming','2018-02-23',3,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Eugene Huang','JavaScript Programming','2018-03-05',5,117.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ruben Torres','Java Programming','2018-02-13',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ruben Torres','Perl Programming','2018-04-16',4,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ruben Torres','Python Programming','2018-6-15',5,179.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Christy Zhu','C Programming','2018-06-13',3,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Christy Zhu','Java Programming','2018-08-12',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Christy Zhu','Perl Programming','2018-09-24',3,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Christy Zhu','Python Programming','2018-10-17',2,179.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Elizabeth Johnson','C Programming','2018-03-14',4,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Elizabeth Johnson','Data Structures and Algorithms','2018-06-25',5,159.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Julio Ruiz','JavaScript Programming','2018-05-07',3,117.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Janet Alvarez','Java Programming','2018-01-04',2,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Janet Alvarez','JavaScript Programming','2018-07-03',5,117.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Janet Alvarez','Data Structures and Algorithms','2018-08-19',4,159.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marco Mehta','C Programming','2018-03-28',2,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marco Mehta','Data Structures and Algorithms','2018-07-03',3,159.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marco Mehta','Python Programming','2018-09-01',5,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marco Mehta','Perl Programming','2018-10-15',5,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marco Mehta','JavaScript Programming','2018-11-15',4,117.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Rob Verhoff','Java Programming','2018-04-04',4,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Rob Verhoff','C Programming','2018-05-07',5,126.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Shannon Carlson','Data Structures and Algorithms','2018-03-01',5,159.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jacquelyn Suarez','Java Programming','2018-11-01',2,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Curtis Lu','JavaScript Programming','2018-05-04',5,117.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Curtis Lu','C Programming','2018-06-01',5,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Curtis Lu','Perl Programming','2018-08-10',5,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Lauren Walker','Java Programming','2018-03-04',4,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Lauren Walker','Python Programming','2018-05-16',5,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Lauren Walker','JavaScript Programming','2018-07-01',3,117.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ian Jenkins','Python Programming','2018-02-08',5,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ian Jenkins','Java Programming','2018-01-06',4,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Sydney Bennett','Java Programming','2018-01-10',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Sydney Bennett','Python Programming','2018-06-07',4,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Sydney Bennett','Data Structures and Algorithms','2018-09-05',4,159.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Chloe Young','Java Programming','2018-04-07',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Chloe Young','Perl Programming','2018-05-09',2,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Chloe Young','C Programming','2018-07-12',3,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Chloe Young','Machine Learning','2018-08-19',3,168.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Wyatt Hill','Java Programming','2018-04-07',5,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Shannon Wang','Python Programming','2018-03-09',3,79.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Clarence Rai','Python Programming','2018-05-08',3,79.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Luke Lal','Java Programming','2018-03-12',2,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Luke Lal','Perl Programming','2018-04-14',5,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Luke Lal','JavaScript Programming','2018-07-18',3,117.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jordan King','Java Programming','2018-02-01',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jordan King','C Programming','2018-04-06',3,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jordan King','Machine Learning','2018-08-23',5,168.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Destiny Wilson','Java Programming','2018-03-13',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Destiny Wilson','Data Structures and Algorithms','2018-04-25',2,159.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','C Programming','2018-03-29',2,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','Java Programming','2018-05-05',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','Python Programming','2018-07-17',3,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','Web Development','2018-09-10',5,127.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Seth Edwards','Perl Programming','2018-04-01',5,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Russell Xie','Java Programming','2018-08-01',5,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Alejandro Beck','Perl Programming','2018-06-01',2,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Harold Sai','Java Programming','2018-07-03',4,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jessie Zhao','Python Programming','2018-04-01',5,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jessie Zhao','C Programming','2018-07-02',2,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jessie Zhao','Java Programming','2018-08-15',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jessie Zhao','Perl Programming','2018-09-21',3,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jill Jimenez','Java Programming','2018-05-01',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jill Jimenez','C Programming','2018-07-12',3,126.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jimmy Moreno','Python Programming','2018-03-01',5,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jimmy Moreno','Java Programming','2018-05-01',3,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Bethany Yuan','Java Programming','2018-03-03',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Bethany Yuan','C Programming','2018-04-01',4,126.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Theresa Ramos','Java Programming','2018-06-03',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Theresa Ramos','C Programming','2018-07-13',2,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Theresa Ramos','JavaScript Programming','2018-08-22',4,117.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Denise Stone','Java Programming','2018-04-02',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Denise Stone','Perl Programming','2018-05-03',2,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Denise Stone','Web Development','2018-08-10',5,127.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jaime Nath','Python Programming','2018-05-09',3,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jaime Nath','Big Data Analysis','2018-07-23',2,173.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jaime Nath','Java Programming','2018-11-26',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jaime Nath','JavaScript Programming','2018-11-26',1,117.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ebony Gonzalez','Perl Programming','2018-04-09',2,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ebony Gonzalez','Java Programming','2018-06-11',3,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Wendy Dominguez','Python Programming','2018-05-21',2,79.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jennifer Russell','Java Programming','2018-04-14',3,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Chloe Garcia','Java Programming','2018-05-25',2,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Diana Hernandez','Perl Programming','2018-03-23',3,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Diana Hernandez','Java Programming','2018-04-14',2,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Diana Hernandez','Cloud Implementation','2018-07-27',3,154.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Java Programming','2018-05-12',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Perl Programming','2018-07-01',5,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Python Programming','2018-08-13',3,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Cloud Implementation','2018-09-19',3,154.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jesse Murphy','Perl Programming','2018-06-03',3,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Amanda Carter','Java Programming','2018-07-04',5,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Megan Sanchez','JavaScript Programming','2018-09-10',5,117.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Megan Sanchez','Java Programming','2018-10-01',5,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Nathan Simmons','Java Programming','2018-04-17',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Nathan Simmons','Perl Programming','2018-05-21',5,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Adam Flores','Python Programming','2018-02-14',4,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Adam Flores','Java Programming','2018-03-21',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Adam Flores','Perl Programming','2018-05-28',5,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Leonard Nara','Python Programming','2018-02-01',3,79.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Christine Yuan','Python Programming','2018-07-18',5,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Christine Yuan','Java Programming','2018-08-27',1,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jaclyn Lu','Python Programming','2018-04-03',5,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jaclyn Lu','Java Programming','2018-05-01',3,115.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jeremy Powell','Java Programming','2018-06-21',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Jeremy Powell','Perl Programming','2018-08-11',4,85.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Carol Rai','Python Programming','2018-03-03',4,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Carol Rai','JavaScript Programming','2018-04-08',3,117.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Carol Rai','Perl Programming','2018-06-02',4,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Carol Rai','Big Data Analysis','2018-07-15',5,173.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Carol Rai','Machine Learning','2018-08-21',5,168.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Carol Rai','Java Programming','2018-09-29',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Carol Rai','Cloud Implementation','2018-11-01',3,154.89);

CREATE MATERIALIZED VIEW student_price AS
  SELECT student_name, course_name, price FROM sales_join_price
  WHERE student_name IS NOT NULL AND course_name IS NOT NULL AND price IS NOT NULL
  PRIMARY KEY (student_name,course_name,price)
  WITH CLUSTERING ORDER BY (price DESC);

CREATE TABLE course (
	course_name text,
	teacher_name text,
	price decimal,
	cost decimal,
	description text,
	average_rate decimal,
	PRIMARY KEY (course_name)
);

insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Java Programming','Kristin Shen',115.89,573,'This is a course of basic Java language',4.5);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Perl Programming','Bailey Cox',85.89,432,'This is a course of basic Perl language',4.2);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('JavaScript Programming','Natasha Hernandez',117.89,623,'This is a course of basic JavaScript language',4.3);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Python Programming','Pamela Rana',79.89,256,'This is a course of basic Python language',4.8);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('C Programming','Kristin Shen',126.89,412,'This is a course of basic C language',3.9);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Big Data Analysis','Jackson Adams',173.89,786,'This is a course of analysing Big Data',4.3);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Machine Learning','Megan Murphy',168.89,894,'This is a course of basic Machine Learning',4.1);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Cloud Implementation','Kristin Shen',154.89,754,'This is a course of how to implement an application based on Cloud technology',4.9);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Web Development','Edward Taylor',127.89,675,'This is a course of how to build Web Development',4.6);
insert into course(course_name,teacher_name,price,cost,description,average_rate) values ('Data Structures and Algorithms','Thomas Perez',159.89,542,'This is a course of advanced Data Structures and Algorithms',4.4);