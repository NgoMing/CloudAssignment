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

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','C Programming','2018-03-29',2,126.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','Java Programming','2018-05-05',3,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','Python Programming','2018-07-17',3,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Ethan Zhang','Web Development','2018-09-10',5,127.89);

insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Java Programming','2018-05-12',5,115.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Perl Programming','2018-07-01',5,85.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Python Programming','2018-08-13',3,79.89);
insert into sales_join_price(student_name,course_name,date,rate,price) values ('Marc Martin','Cloud Implementation','2018-09-19',3,154.89);

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