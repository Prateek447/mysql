# create database qadb;
#use qadb;
#show tables;
#show databases;
#create table employeeInfo(name varchar(20), id int, location varchar(30), age  int);
#describe employeeInfo;
#insert into employeeInfo values ('Ishwar',2,'Universe','888');									
#insert into employeeInfo values ('Pika', 643, 'moon', 521, 'female');
#select * from employeeInfo;
#select name, location from employeeInfo;
#select distinct * from employeeInfo;
#select name from employeeInfo where id>21;
#select name from employeeInfo where (location='Delhi' and age=25) or id=88;
#select name from employeeInfo where age in(00,8,88);
#select name from employeeInfo where location in('Delhi','Mumbai',Goa');
#select name from employeeInfo where age between 0 and 100;
#select name from employeeInfo where age not between 0 and 100;
#RegEx _r%(second letter should be 2), _t_(return where len is 3 and 2nd character must be t)
# while using RegEx like operator must be used
#select name from employeeInfo where name like '_e%';
#alter table employeeInfo add gender  varchar(10);
#describe employeeInfo
#alter table employeeInfo modify gender varchar(20)
#alter table employeeInfo drop gender
#update employeeInfo set gender='male' where name='Negative';
#update employeeInfo set gender='Female' where id=2;
#delete from employeeInfo where id = 3;
#select * from employeeInfo order by name;
#select count(Trainer_Track)  from trainer_info;
#select Trainer_Name, max(Trainer_Experience) from trainer_info
#select Trainer_Name, min(Trainer_Experience) from trainer_info
#select sum(Trainer_Experience) from trainer_info;
#select avg(Trainer_Experience) from trainer_info
#select   Trainer_Track, sum(Trainer_Experience) from trainer_info group by Trainer_Track;
#select Trainer_Location, sum(Trainer_Experience) from trainer_info group by Trainer_Experience;
#select Trainer_Track, sum(Trainer_Experience) from trainer_info group by Trainer_Track having Trainer_Track='Java' or Trainer_Track='Testing'


#from here we will work on more than one table using subqueries....
#select name, age from table1 where name=(select name from table2 where id=3);     name is common between both tables
#select name, age from table1 where name in (select name from table2 where location='Delhi');   we in operator because we have many names


#Here we will use joins for same task
#select t1.name, t2.location from table1 as t1 join table2 as t2 on t1.id=t2.id where t1.location='Delhi';
#select t1.name, t2.location, sum(Salary) from table1 as t1 join table2 as t2 on  t1.id=t2.id group by t1.location where age>19;
#select t1.name,  min(Salary) from tabl1 as t1 join table2 as t2 on t1.id=t2.id group by t.id=t2.id;


#create table from another table using views
#create view sample_table as select Associate_id, Module_id from associate_status where Module_id='010PLSQL';
#select * from sample_table;
#drop view sample_table;
#create view avg_table as select  Trainer_Track, Trainer_Experience from trainer_info group by 
#Trainer_Track having Trainer_Experience > (select avg(Trainer_Experience) from trainer_info);


#String function for SQL concat, substr
#concat
#select concat(Associate_id,Module_id) from associate_status;
#subtr
#select substr(Module_id,2) from associate_status;
#select substr(Module_id,2,4) from associate_status
#replace
#select replace(Module_id,'01','8') from associate_status;
#length
#select length(Module_id) from associate_status;
#trim
#select trim(' 010 ');
#limit for getting top rows
#select * from associate_info limit 4;


