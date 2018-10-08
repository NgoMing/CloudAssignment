CREATE KEYSPACE cass_db
WITH REPLICATION = {
'class' : 'NetworkTopologyStrategy',
'datacenter1' : 2
} ;

use cass_db ;

CREATE TABLE sales_order (
student_name text,
course_name text,
date timestamp,
course_price decimal,
PRIMARY KEY (student_name,course_name,date)
) WITH COMPACT STORAGE ;

insert into sales_order(student_name,course_name,date,course_price) values ('Jon Yang','Java Programming','2018-01-01',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jon Yang','C Programming','2018-03-15',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jon Yang','Python Programming','2018-06-23',79.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Eugene Huang','Perl Programming','2018-02-23',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Eugene Huang','JavaScript Programming','2018-03-05',117.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Ruben Torres','Java Programming','2018-02-13',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Ruben Torres','Perl Programming','2018-04-16',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Ruben Torres','Python Programming','2018-6-15',179.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Christy Zhu','C Programming','2018-06-13',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Christy Zhu','Java Programming','2018-08-12',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Christy Zhu','Perl Programming','2018-09-24',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Christy Zhu','Python Programming','2018-10-17',179.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Elizabeth Johnson','C Programming','2018-03-14',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Elizabeth Johnson','Data Structures and Algorithms','2018-06-25',159.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Julio Ruiz','JavaScript Programming','2018-05-07',117.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Janet Alvarez','Java Programming','2018-01-04',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Janet Alvarez','JavaScript Programming','2018-07-03',117.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Janet Alvarez','Data Structures and Algorithms','2018-08-19',159.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Marco Mehta','C Programming','2018-03-28',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Marco Mehta','Data Structures and Algorithms','2018-07-03',159.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Marco Mehta','Python Programming','2018-09-01',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Marco Mehta','Perl Programming','2018-10-15',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Marco Mehta','JavaScript Programming','2018-11-15',117.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Rob Verhoff','Java Programming','2018-04-04',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Rob Verhoff','C Programming','2018-05-07',126.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Shannon Carlson','Data Structures and Algorithms','2018-03-01',159.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jacquelyn Suarez','Java Programming','2018-11-01',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Curtis Lu','JavaScript Programming','2018-05-04',117.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Curtis Lu','C Programming','2018-06-01',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Curtis Lu','Perl Programming','2018-08-10',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Lauren Walker','Java Programming','2018-03-04',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Lauren Walker','Python Programming','2018-05-16',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Lauren Walker','JavaScript Programming','2018-07-01',117.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Ian Jenkins','Python Programming','2018-02-08',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Ian Jenkins','Java Programming','2018-01-06',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Sydney Bennett','Java Programming','2018-01-10',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Sydney Bennett','Python Programming','2018-06-07',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Sydney Bennett','Data Structures and Algorithms','2018-09-05',159.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Chloe Young','Java Programming','2018-04-07',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Chloe Young','Perl Programming','2018-05-09',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Chloe Young','C Programming','2018-07-12',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Chloe Young','Machine Learning','2018-08-19',168.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Wyatt Hill','Java Programming','2018-04-07',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Shannon Wang','Python Programming','2018-03-09',79.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Clarence Rai','Python Programming','2018-05-08',79.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Luke Lal','Java Programming','2018-03-12',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Luke Lal','Perl Programming','2018-04-14',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Luke Lal','JavaScript Programming','2018-07-18',117.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jordan King','Java Programming','2018-02-01',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jordan King','C Programming','2018-04-06',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jordan King','Machine Learning','2018-08-23',168.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Destiny Wilson','Java Programming','2018-03-13',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Destiny Wilson','Data Structures and Algorithms','2018-04-25',159.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Ethan Zhang','C Programming','2018-03-29',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Ethan Zhang','Java Programming','2018-05-05',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Ethan Zhang','Python Programming','2018-07-17',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Ethan Zhang','Web Development','2018-09-10',127.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Seth Edwards','Perl Programming','2018-04-01',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Russell Xie','Java Programming','2018-08-01',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Alejandro Beck','Perl Programming','2018-06-01',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Harold Sai','Java Programming','2018-07-03',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jessie Zhao','Python Programming','2018-04-01',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jessie Zhao','C Programming','2018-07-02',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jessie Zhao','Java Programming','2018-08-15',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jessie Zhao','Perl Programming','2018-09-21',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jill Jimenez','Java Programming','2018-05-01',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jill Jimenez','C Programming','2018-07-12',126.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jimmy Moreno','Python Programming','2018-03-01',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jimmy Moreno','Java Programming','2018-05-01',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Bethany Yuan','Java Programming','2018-03-03',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Bethany Yuan','C Programming','2018-04-01',126.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Theresa Ramos','Java Programming','2018-06-03',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Theresa Ramos','C Programming','2018-07-13',126.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Theresa Ramos','JavaScript Programming','2018-08-22',117.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Denise Stone','Java Programming','2018-04-02',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Denise Stone','Perl Programming','2018-05-03',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Denise Stone','Web Development','2018-08-10',127.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jaime Nath','Python Programming','2018-05-09',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jaime Nath','Big Data Analysis','2018-07-23',173.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jaime Nath','Java Programming','2018-11-26',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jaime Nath','JavaScript Programming','2018-11-26',117.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Ebony Gonzalez','Perl Programming','2018-04-09',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Ebony Gonzalez','Java Programming','2018-06-11',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Wendy Dominguez','Python Programming','2018-05-21',79.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jennifer Russell','Java Programming','2018-04-14',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Chloe Garcia','Java Programming','2018-05-25',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Diana Hernandez','Perl Programming','2018-03-23',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Diana Hernandez','Java Programming','2018-04-14',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Diana Hernandez','Cloud Implementation','2018-07-27',154.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Marc Martin','Java Programming','2018-05-12',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Marc Martin','Perl Programming','2018-07-01',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Marc Martin','Python Programming','2018-08-13',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Marc Martin','Cloud Implementation','2018-09-19',154.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jesse Murphy','Perl Programming','2018-06-03',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Amanda Carter','Java Programming','2018-07-04',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Megan Sanchez','JavaScript Programming','2018-09-10',117.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Megan Sanchez','Java Programming','2018-10-01',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Nathan Simmons','Java Programming','2018-04-17',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Nathan Simmons','Perl Programming','2018-05-21',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Adam Flores','Python Programming','2018-02-14',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Adam Flores','Java Programming','2018-03-21',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Adam Flores','Perl Programming','2018-05-28',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Leonard Nara','Python Programming','2018-02-01',79.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Christine Yuan','Python Programming','2018-07-18',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Christine Yuan','Java Programming','2018-08-27',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jaclyn Lu','Python Programming','2018-04-03',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jaclyn Lu','Java Programming','2018-05-01',115.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Jeremy Powell','Java Programming','2018-06-21',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Jeremy Powell','Perl Programming','2018-08-11',85.89);

insert into sales_order(student_name,course_name,date,course_price) values ('Carol Rai','Python Programming','2018-03-03',79.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Carol Rai','JavaScript Programming','2018-04-08',117.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Carol Rai','Perl Programming','2018-06-02',85.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Carol Rai','Big Data Analysis','2018-07-15',173.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Carol Rai','Machine Learning','2018-08-21',168.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Carol Rai','Java Programming','2018-09-29',115.89);
insert into sales_order(student_name,course_name,date,course_price) values ('Carol Rai','Cloud Implementation','2018-11-01',154.89);