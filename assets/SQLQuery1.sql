create table addressbook(name varchar(20),emailid varchar(30),userid varchar(20),password varchar(20));
select *from addressbook;
narveen	narveen@gmail.com	narveen@2000	narveen@123
Ram	ram@gmail.com	ram@1999	ram@123
truncate table register;
ALTER TABLE addressbook alter column userid varchar(20) NOT NULL
ALTER TABLE addressbook 
ADD PRIMARY KEY (userid);
drop table addressbook;
create table register(Title varchar(5),First_Name varchar(20),Last_Name varchar(20),Gender varchar(6),DOB varchar(20),address varchar(50),Street varchar(20),email varchar(20),phone_no varchar(10));
select * from register;
            SELECT First_Name,Last_Name
            FROM register;